class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  validates :name, presence: true

  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}")
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end

  def comment_get p_id
    $redis.get("product_comments:#{p_id}")
  end

  def comment_incr p_id
    $redis.incr("product_comments:#{p_id}")
  end

  def comment_decr p_id
    $redis.decr("product_comments:#{p_id}")
  end

end
