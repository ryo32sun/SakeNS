class SakeFavorite < ApplicationRecord
  
  belongs_to :customer
  belongs_to :sake_post
  
end
