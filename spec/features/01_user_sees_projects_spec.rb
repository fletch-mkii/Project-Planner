require 'spec_helper'


feature "user sees list of projects on index page" do
  before(:all) do
    Project.create(name: "systems check", description: "real super duper mega hard")
    Project.create(name: "history essay", description: "real super duper mega easy")
    Project.create(name: "sciencey stuff")

    User.create(first_name: "Mark", last_name: "Fletcher", email: "fakemail1@fakerino.com")
    User.create(first_name: "Bark", last_name: "2letcher", email: "fakemail2@fakerino.com")
    User.create(first_name: "Chark", last_name: "3letcher")
    User.create(first_name: "Wark", last_name: "4letcher")

    Team.create(project_id: 1, user_id: 1)
    Team.create(project_id: 1, user_id: 2)
    Team.create(project_id: 1, user_id: 3)
    Team.create(project_id: 1, user_id: 4)

    Task.create(name:"write code", project_id: 1, user_id: 1, description: "don't fail", due_date: "2015-12-11")
  end

  scenario "index displays all projects" do
    visit '/'

    expect(page).to have_content "systems check"
    expect(page).to have_content "history essay"
    expect(page).to have_content "sciencey stuff"
  end
end
