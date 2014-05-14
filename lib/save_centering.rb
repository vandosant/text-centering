require_relative 'text_centering'

class SaveCentering
  def self.to_file
    file_text = File.read('../data/fishy.txt')
    p file_text
    centered_text = TextCentering.parse(file_text)
    p centered_text
  end
end

SaveCentering.to_file