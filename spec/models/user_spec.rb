require 'spec_helper'

describe User do
  before { @user = FactoryGirl.create(:user) }

  subject { @user }

  describe "attributes" do
    it { should respond_to :email }
    it { should respond_to :password }
    it { should respond_to :password_confirmation }
    it { should belong_to  :role }
  end

  context "no email" do
    before { @user.email = "" }
    it { should_not be_valid }
  end

  context "no password" do
    before { @user.password = "" }
    it { should_not be_valid }
  end

  context "no password confirmation" do
    before { @user.password_confirmation = "" }
    it { should_not be_valid }
  end
end
