require 'rails_helper'

describe Comment do
  context "when the comment has rating" do
    @comment = FactoryBot.build(:comment)

    it "is not valid without a user" do
      @comment = FactoryBot.build(:comment, user: nil)
      expect(@comment).not_to be_valid
    end

    it "is not valid without a rating" do
      @comment = FactoryBot.build(:comment, rating: nil)
      expect(@comment).not_to be_valid
    end
  end
end
