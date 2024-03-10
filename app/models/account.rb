class Account < ApplicationRecord
	has_many :users
	validates :name, presennce: true
end
