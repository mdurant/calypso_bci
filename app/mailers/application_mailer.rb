class ApplicationMailer < ActionMailer::Base
  default from: "mdurant@bci.cl"
  layout 'mailer'
  
  def bienvenido_email(user)
  @user = user
  @url  = 'http://codeHero.co'
  mail(to: @user.email, subject: 'Aprende a programar con nuestros cursos gratis')
end
end
