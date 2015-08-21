require 'spec_helper'

describe DMark do
  it 'returns D if score is between 60 and 69' do
    mark = DMark.new(65)

    expect(mark.execute).to eq 'D'
  end
end
