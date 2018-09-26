require 'rails_helper'

describe Comment do
  context "when the comment has rating" do
    let(:comment) { Comment.create!(user_id: 3, body: "This is test text", rating: 5, product_id: 4)}
    let(:user) { User.create!(email: "test@test.com", password: "testtest", id: 2) }
    let(:product) { Product.create!(name: "test", id: 2)}

    it "is not valid without a user" do
      expect(Comment.new(user_id: 2, body: "This is test text", rating: 2, product_id: 2, user: 2, product: 2)).to be_valid
    end
  end
end
