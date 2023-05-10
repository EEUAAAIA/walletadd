class UserWallet < ApplicationRecord

  belongs_to :user
  belongs_to :wallet
  accepts_nested_attributes_for :wallet

end
