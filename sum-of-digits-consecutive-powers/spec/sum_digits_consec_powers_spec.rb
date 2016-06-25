require 'spec_helper'

# Takes a range of integers and returns any in the range that equal the sum of it's digits raised to consecutive powers

describe '#sum_dig_pow' do
  it 'should return correct integers' do
    expect(sum_dig_pow(1, 10)).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9]
    expect(sum_dig_pow(10, 100)).to eq [89]
    expect(sum_dig_pow(100, 110)).to eq []
    expect(sum_dig_pow(110, 150)).to eq [135]
    expect(sum_dig_pow(1, 150)).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9, 89, 135]
  end
end
