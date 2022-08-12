class ShopPost < ApplicationRecord
  
  belongs_to :shop
  belongs_to :sake_post
  belongs_to :customer
  
  validates :rate, presence: true
  
end
