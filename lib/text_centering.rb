class TextCentering
  def self.parse(string)
    line_lengths = string.lines.map { |line| line.length }
    width = line_lengths.max

    centered_strings = string.lines.map do |line|
      diff = (width - line.length)
      spaces_required = ((diff.to_f/2.to_f).floor)
      line.prepend( " " * spaces_required )
    end

    centered_strings.join
  end
end