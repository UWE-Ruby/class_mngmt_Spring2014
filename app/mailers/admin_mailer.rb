class AdminMailer < ActionMailer::Base
  default from: "admin@class-mngmt.com"

  def notify_about_new student
    @student = student
    to = 'admin@class-mngmt.com'
    to = 'admin@nird.us' if Rails.env.production?
    mail(to: to, subject: 'New Student Signed Up')
  end
end
