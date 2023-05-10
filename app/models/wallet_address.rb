class WalletAddress < ApplicationRecord

  belongs_to :wallet
  belongs_to :address

end
