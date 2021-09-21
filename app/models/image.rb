class Image < ApplicationRecord
	validates :user_id, :presence => true
end
