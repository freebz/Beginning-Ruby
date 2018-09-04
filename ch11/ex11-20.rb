# Advanced Thread Operations

# Waiting for Threads to Finish Redux

threads.each do |thread|
  puts "Thread #{thread.object_id} didn't finish in 1s" unless thread.join(1)
end
