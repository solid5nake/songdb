class Song < ApplicationRecord
  belongs_to :artist
  mount_uploader :image, ImageUploader

end
