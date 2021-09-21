require 'rails_helper'

RSpec.describe User, :type => :model do 

	# subject {
	# 	described_class.new(user_id: 1)
	# }

	# before {

	# }

	describe "associations" do
		it { should have_many(:images) }
	end
	
end