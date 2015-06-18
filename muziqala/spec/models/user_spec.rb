require "rails_helper"

RSpec.describe User, type: :model do
	it "is invalid without an email address" do
		user = FactoryGirl.build(:no_email)
		expect(user.email).to eq nil
	end 
end