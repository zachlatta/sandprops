require 'spec_helper'

describe Owner do
  before { @owner = FactoryGirl.create(:owner) }

  describe "attributes" do
    it { should have_one :user }
  end

  context "no user" do
    before { @owner.user = nil }
    it { should_not be_valid }
  end
end
