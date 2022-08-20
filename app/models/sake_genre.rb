class SakeGenre < ApplicationRecord
  
  has_many :sakes
  
  validates :genre, presence: true, uniqueness: true
  
end
