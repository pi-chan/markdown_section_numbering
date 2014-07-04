require "markdown_section_numbering"

RSpec.configure do |config|
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  open(File.join(fixture_path, file)).read
end
