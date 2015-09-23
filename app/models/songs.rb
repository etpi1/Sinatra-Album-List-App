class Songs < ActiveRecord::Base

  belongs_to :user
  validates :title, presence: true, length: { maximum: 40 }
  validates :author, presence: true, length: { maximum: 30 }
  
end
