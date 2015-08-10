require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the triangle path", {:type => :feature}) do
  it('takes a user input of triangle dimensions and returns what type of triangle it is') do
    visit('/')
    fill_in('length', :with => 5)
    fill_in('width', :with => 5)
    fill_in('height', :with => 5)
    click_button('Submit')
    expect(page).to have_content("equilateral triangle")
  end
end
