require 'spec_helper'

describe FailingMark do
  it 'returns F if score is between 0 and 59' do
    mark = FailingMark.new(50)

    expect(mark.execute).to eq 'F'
  end
end
