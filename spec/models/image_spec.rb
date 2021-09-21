require 'rails_helper'

RSpec.describe Image, :type => :model do 

	# test image for the subject
	test_file = Rails.root.join('spec', 'test.png')

	subject {
		described_class.new(user_id: 1)
	}

	before {
		subject.image_file.attach(
			io: File.open(test_file, 'rb'),
			filename: 'test.png',
			content_type: 'image/png')
	}
	it "is valid with valid attributes" do 
		expect(subject).to be_valid
	end

	it "is not valid without an image_file" do
		subject.image_file = nil
		expect(subject).to_not be_valid
	end

	it "is not valid without a user_id" do 
		subject.user_id = nil
		expect(subject).to_not be_valid
	end

	it "properly attaches a file" do 
		expect(subject.image_file).to be_attached
	end
end
