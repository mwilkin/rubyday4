require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('anagram path', {:type => :feature}) do
  it('takes a single word and a list of words to check for an anagram') do
    visit('/anagram')
    fill_in('word', :with => ("cat"))
    fill_in('word_list', :with => ("tac act tca dog"))
    click_button('Send')
    expect(page).to have_content("tac: true")
    expect(page).to have_content("act: true")
    expect(page).to have_content("tca: true")
    expect(page).to have_content("dog: false")
  end
end
