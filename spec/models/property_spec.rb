require 'spec_helper'

describe Property do
  before { @property = FactoryGirl.create(:property) }

  subject { @property }

  describe "attributes" do
    it { should belong_to :owner }
    it { should respond_to :address }
  end

  context "no owner" do
    before { @property.owner = nil }
    it { should_not be_valid }
  end

  context "no address" do
    before { @property.address = "" }
    it { should_not be_valid }
  end
end
