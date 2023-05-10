class UserBlockchain < ApplicationRecord

  belongs_to :user
  belongs_to :blockchain
  accepts_nested_attributes_for :blockchain

end
