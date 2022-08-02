class SakePost < ApplicationRecord

  belongs_to :customer
  belongs_to :sake
  
  has_many :sake_comments, dependent: :destroy
  has_many :sake_favorites, dependent: :destroy
  has_many :shop_posts
  
    has_one_attached :image
  
  def get_image(width, height)
    image.variant(resize_to_limit: [width, height]).processed
  end

end
