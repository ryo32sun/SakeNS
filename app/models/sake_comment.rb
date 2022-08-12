class SakeComment < ApplicationRecord
  
  belongs_to :customer
  belongs_to :sake_post
  
  validates :comment, presence: true
  
end
