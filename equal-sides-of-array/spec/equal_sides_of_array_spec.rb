require 'spec_helper'

describe '#equal_sides_array' do
  it 'should return correct index for splittable array' do
    expect(equal_sides_array([1,2,3,4,3,2,1])).to eq 3
    expect(equal_sides_array([1,100,50,-51,1,1])).to eq 1
    expect(equal_sides_array([20,-10,5,5])).to eq 0
    expect(equal_sides_array([10,-80,10,10,15,35,20])).to eq 6
  end

  it 'should return -1 for unsplittable array' do
    expect(equal_sides_array(Array(1..100))).to eq -1
    expect(equal_sides_array(Array(-100..-1))).to eq -1
    expect(equal_sides_array([3,4,1,3,5])).to eq -1
  end
end
