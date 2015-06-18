FactoryGirl.define do
	factory :user do
		first_name "MyString"
		last_name "MyString"
		password "123"
		password_confirmation "123"

		sequence :email do |idx|
			"person#{idx}@gmail.com"
		end

		factory :no_email do
			email nil
		end
	end
end