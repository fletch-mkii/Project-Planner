require 'spec_helper'


feature "user sees team members on show page" do

  scenario "show page displays all tasks and the members assigned to them" do
    visit '/'
    click_link 'systems check'

    expect(page).to have_content "Project Tasks:"
    expect(page).to have_content "write code"
    expect(page).to have_content "Mark Fletcher fakemail1@fakerino.com"
  end
end
