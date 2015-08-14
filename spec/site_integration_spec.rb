require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('When using the site to view a dictionary', {:type => :feature}) do
  before() do
    Word.clear()
  end

  it('opens the site') do
    visit('/')
    expect(page).to have_content('vocabulary')
  end

  it('adds a new word to the database') do
    visit('/')
    click_link('Add Word')
    fill_in('word', :with => 'abacus')
    click_button('Submit')
    expect(page).to have_content('abacus')
  end

  it('adds a new definiton to the word') do
    visit('/')
    click_link('Add Word')
    fill_in('word', :with => 'abacus')
    click_button('Submit')
    click_link('View Word')
    click_link 'Add Definition'
    fill_in('definition', :with => 'an oblong frame with rows of wires or grooves along which beads are slid, used for calculating.')
    click_button('Submit')
    expect(page).to have_content('an oblong')
  end

end
