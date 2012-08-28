class SentController < ApplicationController
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
      @message = current_user.messages.build(params[:message])
 
      if @message.save
          flash[:success] = "Message sent!"
          redirect_to root_path
      else
          render :action => "new"
      end
  end

end
