class WalletsController < ApplicationController

  def index
    @wallets = Wallet.all
  end

  def show
    @wallet = Wallet.find(params[:id])
  end

  def edit
    @wallet = Wallet.find(params[:id])
    @blockchains = Blockchain.all.map{ |b| [b.name, b.id] }

  end

  def update
    @wallet = Wallet.find(params[:id])
    #puts params.require(:wallet).inspect
    #puts params.require(:wallet).permit(:name, :blockchain_id).inspect
  #  wallet_params = params.require(:wallet).permit(:name, :blockchain_id)
    @wallet.update(wallet_params)
    redirect_to wallets_path, notice: "Wallet was successfully updated."
  end

  def new
    @wallet = Wallet.new
    @blockchains = Blockchain.all.map{ |b| [b.name, b.id] }
  end

  def create
    @wallet = Wallet.create(wallet_params)
    redirect_to wallets_path, notice: "Wallet was successfully created."

  end

  def destroy
    @wallet = Wallet.find(params[:id])
    @wallet.destroy
    redirect_to wallets_path, notice: "Wallet was successfully deleted."
  end

  def wallet_params
    params.require(:wallet).permit(:name, :blockchain_id)
  end
end
