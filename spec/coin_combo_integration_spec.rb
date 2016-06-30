require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combo path', {:type => :feature}) do
  it('processes the user entry and returns the correct amount of change') do
    visit('/')
    fill_in('change', :with => 22)
    click_button('Convert!')
    expect(page).to have_content('Your Cents: 22 The Change: 0 quarters 2 dimes 0 nickels 2 pennies')
  end
end
