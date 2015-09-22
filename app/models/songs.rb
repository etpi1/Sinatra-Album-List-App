class Songs < ActiveRecord::Base

  validates :title, presence: true, length: { maximum: 40 }
  validates :author, presence: true, length: { maximum: 30 }
  
end
