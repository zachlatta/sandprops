require "spec_helper"

describe "Pages" do
  subject { page }

  context "index" do
    before { visit "/" }
    it { should have_content("Sandcastle Investment Properties") }
    it { should have_title("Sandcastle Investment Properties") }
  end
end
