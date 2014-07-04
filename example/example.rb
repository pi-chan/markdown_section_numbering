require "rubygems"

$:.unshift File.expand_path("../lib", File.dirname(__FILE__))
require "markdown_section_numbering"

markdown = <<MD
# a
## b

foo bar

## c

- list
- list
- list
MD

puts MarkdownSectionNumbering.convert(markdown)
