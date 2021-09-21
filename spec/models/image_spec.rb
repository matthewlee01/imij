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

	describe "validations" do
		it { should validate_presence_of(:user_id) }
		it { should validate_presence_of(:image_file) }
		it { should validate_presence_of(:public) }

		it "properly attaches a file" do 
			expect(subject.image_file).to be_attached
		end
	end

	describe "associations" do
		it { should belong_to(:user) }
	end
end
