class Image < ApplicationRecord

	validates_presence_of :user_id, :image_file, :public

	belongs_to :user

	has_one_attached :image_file

end
