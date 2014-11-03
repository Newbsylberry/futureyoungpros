class SchoolClassMailer < ActionMailer::Base
  default from: "helper_robot@jobshadowsyracuse.com"

  def class_registration_email(school_class)
    @school_class = school_class
    filename = "#{@school_class.school.name}_#{@school_class.contact_last_name}_#{Time.now.strftime('%Y%m%d')}.pdf"
    attachments[filename] = SchoolClassPdf.new(@school_class).render

    mail(to: @school_class.contact_email, subject: "You're registered!")
  end
end
