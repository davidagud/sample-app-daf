class Order < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user, optional: true

  validates :product_id, presence: true
end
