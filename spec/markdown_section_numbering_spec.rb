require "spec_helper"

describe MarkdownSectionNumbering do
  specify "convert correctly" do
    input = fixture("input1.md")
    expected = fixture("output1.md")
    output = MarkdownSectionNumbering.convert(input)
    expect(output).to eq(expected)
  end
  
  specify "ignore spaces after header sign('#')" do
    input = fixture("input2.md")
    expected = fixture("output1.md")
    output = MarkdownSectionNumbering.convert(input)
    expect(output).to eq(expected)
  end

  specify "when max level is set to 2, headings deeper than 2 are not converted" do
    input = fixture("input1.md")
    expected = fixture("output2.md")
    MarkdownSectionNumbering.config(2)
    output = MarkdownSectionNumbering.convert(input)
    expect(output).to eq(expected)
  end
  
end
