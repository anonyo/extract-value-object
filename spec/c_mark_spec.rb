require 'spec_helper'

describe CMark do
  it 'returns D if score is between 70 and 79' do
    mark = CMark.new(75)

    expect(mark.matches?).to be_true
  end
end
