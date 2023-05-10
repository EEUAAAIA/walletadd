class UserWalletsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_wallets = UserWallet.where(user_id: current_user.id)
  end

  def show
    @user_wallet = UserWallet.find(params[:id])
  end

  def edit
    @user_wallet = UserWallet.find(params[:id])
    @wallet = @user_wallet.wallet
    @blockchains = Blockchain.all.map{ |b| [b.name, b.id] }
  end

  def update
    @user_wallet = UserWallet.find(params[:id])
    @user_wallet.update(user_wallet_params)
    redirect_to user_wallets_path, notice: "Wallet was successfully updated."
  end

  def new
    @user_wallet = UserWallet.new
    @blockchains = Blockchain.all.map{ |b| [b.name, b.id] }
    @user_wallet.build_wallet
  end

  def create
    @user_wallet = UserWallet.new(user_wallet_params)
    @user_wallet.user = current_user
    if @user_wallet.save
      redirect_to user_wallets_path, notice: "Wallet was successfully created."
    else
      render :new
    end
  end

  def destroy
    @user_wallet = UserWallet.find(params[:id])
    @user_wallet.destroy
    redirect_to user_wallets_path, notice: "Wallet was successfully deleted."
  end

  def user_wallet_params
    params.require(:user_wallet).permit(:user_id, wallet_attributes: [:id, :name, :blockchain_id])
  end

end
