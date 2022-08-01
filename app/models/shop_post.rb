class ShopPost < ApplicationRecord
  
  belongs_to :shop
  belongs_to :sake_posts, dependent: :destory
  
end
