class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #devise :database_authenticatable, :validatable
  #has_many :wallets
  #has_many :addresses
  has_many :user_blockchains
  has_many :blockchains, through: :user_blockchains

end
