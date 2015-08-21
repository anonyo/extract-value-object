require 'spec_helper'

describe BMark do
  it 'returns B if score is between 80 and 89' do
    mark = BMark.new(88)

    expect(mark.matches?).to be_true
  end
end
