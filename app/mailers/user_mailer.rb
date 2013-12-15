class UserMailer < ActionMailer::Base
  default from: "admin@future40b.com"

  def registration_email(mou)
    @mou = mou
    mail(to: @mou.emailAddress, 'chris.s.mccarthy@gmail.com', 'tpalermo@saltcitydistrict.com' 
         subject: "Thanks for Registering with the Future40B Program!")
  end
    

end
