require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('When using the site to view a dictionary', {:with => :feature}) do
  it('opens the site') do
    visit('/')
    expect(page).to have_content(eq("Welcome"))
  end
end
