class UserMailer < ActionMailer::Base
  
  default :cc => [ "chris.s.mccarthy@gmail.com", "tpalermo@saltdistrict.com" ],
          from: "admin@future40b.com"
  
  def registration_email(mou)
    @mou = mou
    mail(to: @mou.emailAddress, 
         subject: "Thanks for Registering with the Future40B Program!")
  end  
end
