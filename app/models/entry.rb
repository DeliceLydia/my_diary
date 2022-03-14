class Entry < ApplicationRecord
	belongs_to :user

	validates :date, presence: true, length: { minimum: 3, maximum: 20 }
	validates :title, presence: true, length: { minimum: 3, maximum: 20 }
	validates :entry, presence: true, length: { minimum: 10, maximum: 2000 }
end
