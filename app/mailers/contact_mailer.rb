class ContactMailer < ActionMailer::Base
  default from: "ben@bytenel.com"

  def new_message(message)
      @message = message
	  mail(to: 'nelson.ben.c@gmail.com', subject: @message.subject)
  end
end
