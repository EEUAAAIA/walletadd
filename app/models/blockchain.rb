class Blockchain < ApplicationRecord
  has_many :wallets

  has_many :user_blockchains
  has_many :users, through: :user_blockchains
end
