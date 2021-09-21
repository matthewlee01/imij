class Image < ApplicationRecord

	validates_presence_of :user_id, :image_file
	validates_inclusion_of :public, :in => [true, false]

	belongs_to :user

	has_one_attached :image_file

end
