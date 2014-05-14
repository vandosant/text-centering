require 'spec_helper'
require_relative '../lib/text_centering'

describe TextCentering do
  let :string do
    <<-INPUT
this is a short line
this is a really long line that has a lot of characters
and this is
short
    INPUT
  end

  it 'centers an inputted text' do
    actual = TextCentering.parse(string)

    expected = <<-INPUT
                 this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short
    INPUT

    expect(actual).to eq expected
  end
end