FactoryGirl.define do
	# Creates sample data for testing
	factory :user do
		first_name "MyString"
		last_name "MyString"
		password "123"
		password_confirmation "123"

		sequence :email do |idx|
			"person#{idx}@gmail.com"
		end

		factory :no_first_name do
			first_name nil
		end

		factory :no_last_name do
			last_name nil
		end

		factory :no_email do
			email nil
		end

		factory :no_password do
			password nil
		end

		factory :no_password_confirmation do
			password_confirmation nil
		end
	end
end