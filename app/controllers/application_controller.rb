class ApplicationController < ActionController::Base
  protect_from_forgery
 
  def contact
    @message = Message.new(params[:message])
    if @message.valid?
      ContactMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

  def index
  	@message = Message.new

  	render :index
  end
end
