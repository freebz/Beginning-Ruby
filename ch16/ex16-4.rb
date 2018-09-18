require 'base64'
puts Base64.encode64(File.read('/bin/bash'))
