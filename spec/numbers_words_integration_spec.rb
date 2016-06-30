require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('numbers and words path', {:type => :feature}) do
  it('processes the user entry and returns number into words') do
    visit('/')
    fill_in('numbers', :with => 57)
    click_button('Send')
    expect(page).to have_content('fifty seven')
  end
end
