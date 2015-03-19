require 'markdown_section_numbering/version'

class MarkdownSectionNumbering
  class << self
    def config(max_level)
      @max_level = max_level
    end

    def convert(input)
      @section_index = [-1] + [0] * max_level
      input.lines.map do |line|
        convert_line(line)
      end.join("\n") + "\n"
    end

  private

    def max_level
      @max_level || 10
    end

    def convert_line(line)
      line.chomp!
      match = line.match(/^#+/)
      if !match
        line
      else
        level = match[0].length
        add_section_number(line, level)
      end
    end

    def add_section_number(line, target_level)
      return line if target_level > max_level

      header_sign = '#' * target_level
      regex = Regexp.new("^#{header_sign}\\s*(\\d+(\\.\\d+)*)?\\s*(.+)")
      match = line.match(regex)

      number = calc_section_number(target_level)

      "#{header_sign} #{number} #{match[3]}"
    end

    def calc_section_number(target_level)
      @section_index[target_level] += 1
      ((target_level + 1)..max_level).each do |child_level|
        @section_index[child_level] = 0
      end
      (1..target_level).map { |level| @section_index[level].to_s }.join('.')
    end
  end
end
