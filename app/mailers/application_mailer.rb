class ApplicationMailer < ActionMailer::Base
  default from: "mdurant@bci.cl"
  layout 'mailer'
  
  def bienvenido_email(user)
  @user = user
  @url  = 'http://www.bci.cl/'
  mail(to: @user.email, subject: 'Enviando información de la Fabrica Calypso')
end
end
