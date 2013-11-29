class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def registration_email(mou)
    @mou = mou
    mail(to: @mou.emailAddress, subject: "Thanks for Registering with the Future40B Program!")
  end
    

end
