class UserMailer < ApplicationMailer
  def confirmation_email(user)
    @user = user
    @url  = 'http://example.com/'
    mail(to: @user.email, subject: 'Confirma tu cuenta')
  end
end
