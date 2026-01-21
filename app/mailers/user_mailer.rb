class UserMailer < ApplicationMailer
  default from: 'admin@example.com'

  def registration_completed(user)
    @user = user
    mail(to: @user.email, subject: 'Registration completed')
  end
end