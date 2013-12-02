require "spec_helper"

describe "Authentication" do

  subject { page }

  describe "user registration" do
    before { visit new_user_registration_path }

    it { should have_content("Affordable living") }
  end

  describe "sign_in page" do
    before { visit new_user_session_path }

    it { should have_selector("h2", text: "Sign in") }
    it { should have_title("Sign in") }
  end

  describe "owner sign in" do
    before { visit new_user_session_path }

    context "with invalid information" do
      before { click_button "Sign in" }

      it { should have_title("Sign in") }
      it { should have_selector("div.alert-box.warning") }
    end

    context "with valid information" do
      let(:owner) { FactoryGirl.create(:owner) }
      before do
        fill_in "Email", with: owner.user.email.upcase
        fill_in "Password", with: owner.user.password
        click_button "Sign in"
      end

      it { should have_link("Sign out", href: destroy_user_session_path) }
      it { should_not have_link("Sign in", href: new_user_session_path) }

      describe "followed by sign out" do
        before { click_link "Sign out", match: :first }
        it { should have_link("Sign in") }
      end
    end
  end
end
