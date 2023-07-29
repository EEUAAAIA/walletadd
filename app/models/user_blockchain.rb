class UserBlockchain < ApplicationRecord

#  validates :blockchain, uniqueness: { scope: :user_id, message: "Cette blockchain a déjà été ajoutée par l'utilisateur" }

  belongs_to :user
  belongs_to :blockchain
  accepts_nested_attributes_for :blockchain

end
