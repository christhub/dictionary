require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('When using the site to view a dictionary', {:type => :feature}) do
  it('opens the site') do
    visit('/')
    expect(page).to have_content('Welcome')
  end

  it('adds a new word to the database') do
    visit('/')
    click_link('Add a New Word')
    fill_in('word', :with => 'abacus')
    click_button('Submit')
    expect(page).to have_content('abacus')
  end
end
