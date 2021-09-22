require 'rails_helper'

RSpec.describe "Images", type: :request do 

	# basic test to ensure routing/controller are working
	describe "GET /index" do 
		it "returns http success" do 
			get images_path
			expect(response).to have_http_status(:success)
		end
	end

end
