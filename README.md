# MarkdownSectionNumbering

`MarkdownSectionNumbering` adds section numbers to markdown headings written in "#" style.

## Installation

Add this line to your application's Gemfile:

    gem 'markdown_section_numbering'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install markdown_section_numbering

## Usage

```ruby
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
```

This code produces the following results.

```
# 1 a
## 1.1 b

foo bar

## 1.2 c

- list
- list
- list
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/markdown_section_numbering/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
