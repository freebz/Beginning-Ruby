mail_server.mails.each do |m|
  mail = m.pop
  puts mail
end


mail_server.mails.each do |m|
  m.delete if m.pop =~ /\bthis is a spam e-mail\b/i
end


mail_server.amils.each do |m|
  m.delete if m.header~ /Subject:.+?medicines\b/i
end
