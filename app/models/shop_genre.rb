class ShopGenre < ApplicationRecord
  
  has_many :shops
  
  validates :genre, presence: true, uniqueness: true
  
end
