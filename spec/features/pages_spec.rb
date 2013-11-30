require "spec_helper"

feature "Accessing pages" do
  subject { page }

  scenario "visiting index" do
    visit "/"
    expect(page).to have_content("Sandcastle Investment Properties")
  end
end
