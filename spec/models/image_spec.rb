require 'rails_helper'

RSpec.describe Image, :type => :model do 

	test_file = Rails.root.join('spec', 'test.png')
	test_image_file = ActiveStorage::Blob.create_and_upload!(
			io: File.open(test_file, 'rb'),
			filename: 'test.png',
			content_type: 'image/png').signed_id
	subject {
		described_class.new(user_id: 1,
												image_file: test_image_file)
	}
	it "is valid with valid attributes" do 
		expect(subject).to be_valid
	end

	it "is not valid without a user_id" do 
		subject.user_id = nil
		expect(subject).to_not be_valid
	end

	it "is valid if image file is attached" do
		subject.image_file = nil
		expect(subject).to_not be_valid
	end
end

