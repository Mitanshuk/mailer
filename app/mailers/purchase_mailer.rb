class PurchaseMailer < ApplicationMailer
  def confirmation_email(course, user)
    @course = course
    @user = user
    mail(to: user.email, subject: "Course Purchase Confirmation")
  end
end
