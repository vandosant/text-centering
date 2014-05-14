class TextCentering
  def self.parse(string)
    line_lengths = string.lines.map { |line| line.lstrip.length }
    width = line_lengths.max

    centered_strings = string.lines.map do |line|
      diff = (width - line.lstrip.length)
      spaces_required = ((diff.to_f/2.to_f).floor)
      line.lstrip.prepend( " " * spaces_required )
    end

    centered_strings.join
  end
end