require_relative './spec_helper'
require_relative '../prime.rb'

describe "prime?" do
  it 'returns true for prime numbers' do
    expect(prime?(2)).to be(true)
    expect(prime?(3)).to be(true)
    expect(prime?(11)).to be(true)
    expect(prime?(105557)).to be(true)
  end

  it 'returns false for non-prime numbers' do
    expect(prime?(-1)).to be(false), "Be sure to account for negative numbers!"
    expect(prime?(0)).to be(false)
    expect(prime?(1)).to be(false)
    expect(prime?(4)).to be(false)
    expect(prime?(40)).to be(false)
    expect(prime?(1763)).to be(false)
    expect(prime?(101013)).to be(false)
  end
end

def prime(num)
  if num < 0 or num == 0 or num == 1
  return false
else
  (2..num-1).to_a.all? do |possible_factor| 
    num % possible_factor != 0
  end
end

