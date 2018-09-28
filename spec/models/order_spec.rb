require 'rails_helper'

describe Order do
  context "when the order has product id" do
    @order = FactoryBot.build(:order)

    it "is not valid without a product id" do
      @order = FactoryBot.build(:order, product: nil)
      expect(@order).not_to be_valid
    end
  end
end
