class Account < ApplicationRecord
	resourcify
	has_many :users
	validates :name, presennce: true
end
