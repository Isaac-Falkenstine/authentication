require "rails_helper"

describe "user_new" do
  it "user_can_create_a_new_user" do

    visit "/users/new"

    fill_in 'Name', with: "Isaac Falkenstine"
    fill_in 'Email', with: "isaac@email.com"
    fill_in 'Password', with: "password123"
    click_button "Create User"

  end
end
