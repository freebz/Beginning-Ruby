# Safe Levels

require 'erb'

template = <<EOF
Let's try to do something crazy like access the filesystem:
<%= `ls` %>
EOF

puts ERB.new(template, 3).result # Using safe level 3!
