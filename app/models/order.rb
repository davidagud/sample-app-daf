class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :product_id, presence: true
end
