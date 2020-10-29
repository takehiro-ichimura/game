class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :tags
    has_many :tags
end
