class User < ApplicationRecord
	has_many :entries

	validates :firstname, presence: true, length: { minimum: 3, maximum: 20 }
	validates :lastname, presence: true, length: { minimum: 3, maximum: 20 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
  validates :password, presence: true, length: { minimum: 6, maximum: 250 }
end
