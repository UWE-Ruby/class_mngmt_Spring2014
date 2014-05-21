class AdminMailer < ActionMailer::Base
  default from: "admin@class-mngmt.com"

  def notify_about_new student
    @student = student
    mail(to: 'admin@class-mngmt.com', subject: 'New Student Signed Up')
  end
end
