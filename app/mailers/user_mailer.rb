class UserMailer < ApplicationMailer
  default from: "no-reply@eventbrite_like.com"

  def welcome_email(new_user)
    @user = new_user
    @url = "https://eventbrite_like.com/login"
    mail(to: @user.email, subject: "Welcome #{@user.first_name}")
  end
end
