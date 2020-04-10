class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 255}
  
  has_many :favorites, dependent: :destroy
  has_many :added_to_favorites, through: :favorites, source: :user
  has_many :comments
end