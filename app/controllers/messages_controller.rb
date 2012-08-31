class MessagesController < ApplicationController
    before_filter :correct_user, only: [:create, :show, :destroy]
    
    def index
        @messages = current_user.messages
    end

    def show
        @messages = Message.where("touser_id = ?", current_user.id)
    end

    def new
        @message = current_user.messages.build
    end

    def create
        logger.info(params[:message])
        @message = current_user.messages.build(params[:message])

        if @message.save
            flash[:success] = "Message sent!"
            redirect_to root_path
        else
            render :action => "new"
        end
    end

    def destroy
        @message.destroy
        redirect_to root_path
    end

    private

    def correct_user
        @message = current_user.messages.find_by_id(params[:id])
    rescue
        redirect_to root_path
    end

end
