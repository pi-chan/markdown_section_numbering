# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'markdown_section_numbering/version'

Gem::Specification.new do |spec|
  spec.name          = 'markdown_section_numbering'
  spec.version       = MarkdownSectionNumbering::VERSION
  spec.authors       = ['xoyip']
  spec.email         = ['xoyip@piyox.info']
  spec.summary       = 'Add section numbers to markdown headings.'
  spec.description   = ''
  spec.homepage      = 'https://github.com/xoyip/markdown_section_numbering'
  spec.license       = 'MIT'

  spec.executables   = ['markdown-section-numbering']
  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
