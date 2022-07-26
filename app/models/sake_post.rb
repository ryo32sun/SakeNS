class SakePost < ApplicationRecord

  belongs_to :customer
  belongs_to :sake
  
  has_many :sake_comments, dependent: :destroy
  has_many :sake_favorites, dependent: :destroy
  has_many :shop_posts
  
  has_one_attached :image
  
  validates :rate, presence: true
  validates :impression, presence: true
  validates :image, presence: { message: 'を登録してください'}
  
  def favorited_by?(customer)
    sake_favorites.exists?(customer_id: customer.id)
  end
  
  def get_image(width, height)
    image.variant(resize_to_limit: [width, height]).processed
  end

end
