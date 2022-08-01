class SakePost < ApplicationRecord

  belongs_to :customer
  belongs_to :sake
  
  has_many :sake_comments, dependent: :destroy
  has_many :sake_favorites, dependent: :destroy

end
