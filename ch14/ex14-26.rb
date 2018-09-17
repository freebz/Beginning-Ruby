Net::SMTP.start('mail.your-domain.com')

Net::SMTP.start('mail.your-domain.com', 25, 'localhost', 'username',
                'password', :plain)
