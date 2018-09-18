require 'digest/sha1'

Digest::SHA1.digest('test' * 1000)


Digest::SHA1.digest('test' * 1000).each_byte do |byte|
  print byte, "-"
end
