require 'spec_helper'


feature "user sees team members on show page" do

  scenario "show page displays all members of the project" do
    visit '/'
    click_link 'systems check'

    expect(page).to have_content "systems check"
    expect(page).to have_content "Mark Fletcher fakemail1@fakerino.com"
    expect(page).to have_content "Chark 3letcher"
  end
end
