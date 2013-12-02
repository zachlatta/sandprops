require 'spec_helper'

describe Unit do
  before { @unit = FactoryGirl.create(:unit) }

  subject { @unit }

  describe "attributes" do
    it { should belong_to :property }
    it { should respond_to :number }
    it { should respond_to :rent }
    it { should respond_to :lease }
  end

  context "no property" do
    before { @unit.property = nil }
    it { should_not be_valid }
  end

  context "no number" do
    before { @unit.number = "" }
    it { should_not be_valid }
  end

  context "no rent" do
    before { @unit.rent = nil }
    it { should_not be_valid }
  end
end
