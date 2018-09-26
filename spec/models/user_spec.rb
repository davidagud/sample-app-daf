require 'rails_helper'

describe User do
  context "when the user has email" do
    let(:user) { User.create!(first_name: "First", last_name: "Last", email: "test@test") }

    it "is not valid without an email" do
      expect(User.new(first_name: "First", last_name: "Last", password: "wowwow")).not_to be_valid
    end

    it "is not valid without a password" do
      expect(User.new(first_name: "First", last_name: "Last", email: "wow@wow.com")).not_to be_valid
    end

    it "is not valid with both an email and password" do
      expect(User.new(first_name: "First", last_name: "Last", email: "wow@wow.com", password: "wowwow")).to be_valid
    end
  end
end
