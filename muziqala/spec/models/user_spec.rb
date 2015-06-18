require "rails_helper"

RSpec.describe User, type: :model do
	it "is invalid without an email address" do
		user = FactoryGirl.build(:no_email)
		expect(user).not_to be_valid
	end 

	it "is invalid without a first name" do
		user = FactoryGirl.build(:no_first_name)
		expect(user).not_to be_valid
	end

	it "is invalid without a last name" do
		user = FactoryGirl.build(:no_last_name)
		expect(user).not_to be_valid
	end

	it "is invalid without a password" do
		user = FactoryGirl.build(:no_password)
		expect(user).not_to be_valid
	end

	it "is invalid without a password confirmation" do
		user = FactoryGirl.build(:no_password_confirmation)
		expect(user).not_to be_valid
	end

end