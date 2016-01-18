require 'spec_helper'


feature "user sees project description on show page" do

  scenario "show page displays project name and description" do
    visit '/'
    click_link 'systems check'

    expect(page).to have_content "systems check"
    expect(page).to have_content "real super duper mega hard"
  end
end
