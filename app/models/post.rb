class Post < ApplicationRecord
  paginates_per 7

  belongs_to :user
  has_many_attached :images
  has_many :comments

  validates :title, presence: true
  validates :description, presence: true
end
