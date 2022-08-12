class SakeGenre < ApplicationRecord
  
  has_many :sakes
  
  validates :genre, presence: true
  
end
