class Sake < ApplicationRecord
  
  has_many :sake_posts, dependent: :destroy
  belongs_to :sake_genre
  
end
