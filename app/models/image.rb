class Image < ApplicationRecord
	validates :user_id, :presence => true

	has_one_attached :image_file
end
