class MessagesController < ApplicationController
    before_filter :correct_user
    
    def index
        @messages = current_user.messages.paginate(page: params[:page])
        @messages.each do |message|
            message.user = User.find_by_name(message[:user_name])
        end
    end

    def show
        @messages = Message.where("user_name = ?", current_user.name)
    end

    def new
        @message = current_user.messages.build
    end

    def create
        @message = current_user.messages.build(params[:message])

        if @message.save
            flash[:success] = "Message sent!"
            redirect_to sent_path
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
