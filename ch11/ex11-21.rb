# Getting a List of All Threads

10.times { Thread.new { 10.times { |i| print i; $stdout.flush; sleep rand(2) } } }
Thread.list.each { |thread| thread.join unless thred == Thread.main }
