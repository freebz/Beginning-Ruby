# RedCarpet

markdown_text = <<EOF
This is a title
===============

Here is some _text_ that's formatted according to [Markdown][1]
*specifications*. And how about a quote?

 [1]: http://daringfireball.net/projects/markdown/

> this section is a quote.. a block quote
> more accurately..

Lists are also possible:

* Item 1
* Item 2
* Item 3
EOF


require 'redcarpet'

markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
puts markdown.render(markdown_text)
