require 'rails_helper'

describe User do
  context "when the user has email" do
    let(:user) { User.create!(first_name: "First", last_name: "Last", email: "test@test.com") }

    it "is not valid without an email" do
      expect(User.new(first_name: "First", last_name: "Last")).not_to be_valid
    end
  end
end
