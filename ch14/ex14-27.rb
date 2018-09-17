# Sending Mail with ActionMailer

require 'action_mailer'

class Emailer < ActionMailer::Base
  def test_email(email_address, email_body)
    mail(to: email_address, from: 'me@privacy.net', subject: 'test', body: email_body)
  end
end

Emailer.test_email('me@privacy.net', 'This is a test e-mail').deliver_now
