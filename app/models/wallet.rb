class Wallet < ApplicationRecord

  belongs_to :blockchain
  has_many :addresses

#  belongs_to :user
#  has_many :wallet_addresses
#  has_many :addresses, through: :wallet_addresses

end
