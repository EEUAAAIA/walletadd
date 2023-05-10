class Address < ApplicationRecord
  belongs_to :wallet

  has_many :user_addresses
  has_many :users, through: :user_addresses
end
