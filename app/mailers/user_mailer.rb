class UserMailer < ActionMailer::Base
  admin = [ "chris.s.mccarthy@gmail.com", "tpalermo@saltcitydistrict.com" ]
  default to: Proc.new { admin },
          from: "admin@future40b.com"
  
  def registration_email(mou)
    @mou = mou
    mail(to: @mou.emailAddress, 
         subject: "Thanks for Registering with the Future40B Program!")
  end  
end
