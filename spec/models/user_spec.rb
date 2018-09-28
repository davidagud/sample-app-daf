require 'rails_helper'

describe User do
  context "when the user has email" do
    @user = FactoryBot.build(:user)

    it "is not valid without an email" do
      @user = FactoryBot.build(:user, email: nil)
      expect(@user).not_to be_valid
    end

    it "is not valid without a password" do
      @user = FactoryBot.build(:user, password: nil)
      expect(@user).not_to be_valid
    end

    it "is not valid with both an email and password" do
      @user = FactoryBot.build(:user, password: nil, email: nil)
      expect(@user).not_to be_valid
    end
  end

end
