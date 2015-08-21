require 'spec_helper'

describe AMark do
  it 'returns A if score is between 90 and 100' do
    mark = AMark.new(100)

    expect(mark.matches?).to be_true
  end
end
