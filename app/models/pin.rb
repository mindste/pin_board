class Pin < ApplicationRecord
  acts_as_votable
  
  mount_uploader  :image, ImageUploader

  belongs_to  :user
  scope  :recent,  ->  { order("created_at  DESC") }
end
