require('rspec')
require('coin_combo.rb')

describe('Fixnum#coin_combo') do
  it('return an array with how many pennies there should be') do
    expect(4.coin_combo()).to(eq([0,0,0,4]))
  end
  it('return an array with how many nickels there should be') do
    expect(5.coin_combo()).to(eq([0,0,1,0]))
  end
  it('return an array with how many dimes there should be') do
    expect(10.coin_combo()).to(eq([0,1,0,0]))
  end
  it('return an array with how many quarters there should be') do
    expect(25.coin_combo()).to(eq([1,0,0,0]))
  end
end
