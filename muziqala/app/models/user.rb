class User < ActiveRecord::Base
	# Uses bcrypt to encrypt password
	has_secure_password

	# Restricts user from creating an account without the required fields
	validates :first_name, :last_name, :email, :password, :password_confirmation, presence: true

	# Combines user's first and last name into a full name
	def full_name
		"#{first_name} #{last_name}"
	end
end
