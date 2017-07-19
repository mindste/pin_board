class Pin < ApplicationRecord
  mount_uploader  :image, ImageUploader

  belongs_to  :user 
  scope  :recent,  ->  { order("created_at  DESC") }
end
