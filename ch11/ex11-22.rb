# Thread Operations from Within Threads Themselves

Thread.new do
  10.times do |i|
    print i
    $stdout.flush
    Thread.stop
  end
end

Thread.list.each { |thread| thread.run }

2.times { Thread.new { 10.times { |i| print i; $stdout.flush; Thread.pass } } }
Thread.list.each { |thread| thread.join unless thread == Thread.main }
