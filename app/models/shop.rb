class Shop < ApplicationRecord
  
  belongs_to :shop_genre
  
  has_many :shop_posts, dependent: :destroy
  has_many :shop_favorites, dependent: :destory
  
end
