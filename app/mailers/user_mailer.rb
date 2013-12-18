class UserMailer < ActionMailer::Base
  
  default :cc => [ "chris.s.mccarthy@gmail.com", "tpalermo@saltdistrict.com" ],
          from: "admin@future40b.com"
  
  def registration_email(mou)
    @mou = mou
    mail(to: @mou.emailAddress, 
         subject: "Thanks for Registering with the Future40B Program!")
  end  

  def prof_match_email(match)
    @match = match
    mail(to: @match.mou.emailAddress,
         subject: "A Student would like to shadow you at work!")
  end

  def student_match_email(match)
    @match = match
    mail(to: @match.student_interest.school.contactEmail,
         subject: "A Hosting Opportunity is Available for a Student!")
  end

  def admin_match_email(match)
    @match = match
    mail(to: @match.user.email,
         subject: "Oh Boy! A Hosting Opportunity has been Arranged!")
  end

end
