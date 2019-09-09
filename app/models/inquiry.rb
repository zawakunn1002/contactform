class Inquiry < ApplicationRecord

	validates :name, presence: true
	validates :email, presence: true, format: { with: /\A[a-zA-Z0-9]+\z/ }
	validates :message, presence: true
end
