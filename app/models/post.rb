class Post < ApplicationRecord
  paginates_per 5
  belongs_to :user

  has_many_attached :images
end
