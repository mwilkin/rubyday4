require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('makechange path', {:type => :feature}) do
  it('takes numeric input and determines coinage') do
    visit('/makechange')
    fill_in('change', :with => 67)
    click_button('Send')
    expect(page).to have_content("quarters: 2")
    expect(page).to have_content("dimes: 1")
    expect(page).to have_content("nickels: 1")
    expect(page).to have_content("pennies: 2")
  end
end
