require 'rails_helper'

describe Product do
  context "when the product has comments" do
    @product = FactoryBot.build(:product)

    #before do
      @product = FactoryBot.create(:comment, rating: 1)
      @product = FactoryBot.create(:comment, rating: 3)
      @product = FactoryBot.create(:comment, rating: 5)

      #product.comments.create!(rating: 1, user: user, body: "Awful bike!")
      #product.comments.create!(rating: 3, user: user, body: "Ok bike.")
      #product.comments.create!(rating: 5, user: user, body: "Great bike!")
    #end

    it "should return the average rating of all comments" do
      expect(@product).average_rating.to eq 3
    end

    it "is not valid without a name" do
      @product = FactoryBot.build(:product, name: nil)
      expect(@product).not_to be_valid
    end
  end
end
