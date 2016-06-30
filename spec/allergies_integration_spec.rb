require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('allergies path', {:type => :feature}) do
  it('translates a score into a list of allergies') do
    visit('/allergies')
    fill_in('score', :with => (13))
    click_button('Send')
    expect(page).to have_content("eggs")
    expect(page).to have_content("shellfish")
    expect(page).to have_content("strawberries")
  end
end
