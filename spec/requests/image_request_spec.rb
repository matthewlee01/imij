require 'rails_helper'

RSpec.describe "Images", type: :request do 


	test_file = Rails.root.join('spec', 'test.png')
	test_file_id = ActiveStorage::Blob.create_and_upload!(
		io: File.open(test_file, 'rb'),
		filename: 'test.png',
		content_type: 'image/png').signed_id

	before(:each) do 
		post images_path, params: {
			image: {
				user_id: 1,
				description: "test",
				public: true,
				image_file: test_file_id
			}
		}

	end

	describe "GET /index" do 
		it "returns http success" do 
			get images_path
			expect(response).to have_http_status(:success)
		end
	end

	describe "POST /images" do
		
		it "posts successfully" do 
			expect(response.status).to eq(201)
		end
		

	end

end
