class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end

  def edit
    @address = Address.find(params[:id])
    @wallets = Wallet.all.map{ |w| [w.name, w.id] }
  end

  def update
    @address = Address.find(params[:id])
  #  puts params.require(:address).permit(:address, :username, :wallet_id).inspect
  #  address_params = params.require(:address).permit(:address, :username, :wallet_id)
    @address.update(address_params)
    redirect_to addresses_path, notice: "Address was successfully updated."
  end

  def new
    @address = Address.new
    @wallets = Wallet.all.map{ |w| [w.name, w.id] }
  end

  def create
    @address = Address.create(address_params)
    redirect_to addresses_path, notice: "Address was successfully created."
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to addresses_path, notice: "Address was successfully deleted."
  end

  def address_params
    params.require(:address).permit(:address, :username, :wallet_id)
  end
end
