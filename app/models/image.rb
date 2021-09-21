class Image < ApplicationRecord

	validates_presence_of :user_id
	validates_presence_of :image_file

	has_one_attached :image_file

end
