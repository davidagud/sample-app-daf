require 'rails_helper'

describe Order do
  context "when the order has product id" do
    let(:order) { Order.create!(product_id: 1, user_id: 4, total: 10.0) }
    let(:user) { User.create!(email: "test@test.com", password: "testtest" ) }
    let(:product) { Product.create!(name: "Test") }

    it "is not valid without a product id" do
      expect(Order.new(user: user, total: 20.0)).not_to be_valid
    end
  end
end
