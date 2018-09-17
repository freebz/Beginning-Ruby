ftp.getbinaryfile('ruby-1.8.7.tar.gz', 'local-filename', 102400) do |blk|
  puts "A 100KB block of the file has been downloaded"
end


ftp.getbinaryfile('ruby-1.8.7.tar.gz', 'local-filename', 102400) do |blf|
  .. do something with blk here ..
end
