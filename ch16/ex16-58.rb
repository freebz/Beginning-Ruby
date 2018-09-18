ftp_url = URI::FTP.build( :userinfo => 'username:password',
                          :host => 'ftp.example.com',
                          :path => '/pub/folder',
                          :typecode => 'a')

puts ftp_url.to_s
