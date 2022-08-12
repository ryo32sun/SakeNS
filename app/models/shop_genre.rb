class ShopGenre < ApplicationRecord
  
  has_many :shops
  
  validates :genre, presence: true
  
end
