class UserAddressesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_addresses = UserAddress.where(user_id: current_user.id)

  end

  def show
    @user_address = UserAddress.find(params[:id])
  end

  def edit
    @user_address = UserAddress.find(params[:id])
    @address = @user_address.address
    @wallets = Wallet.all.map{ |w| [w.name, w.id] }
  end

  def update
    @user_address = UserAddress.find(params[:id])
    @user_address.update(user_address_params)
    redirect_to user_addresses_path, notice: "Address was successfully updated."
  end

  def new
    @user_address = UserAddress.new
    @wallets = Wallet.all.map{ |w| [w.name, w.id] }
    @user_address.build_address
  end

  def create
    @user_address = UserAddress.new(user_address_params)
    @user_address.user = current_user
    if @user_address.save
      redirect_to user_addresses_path, notice: "Address was successfully created."
    else
      render :new
    end
  end

  def destroy
    @user_address = UserAddress.find(params[:id])
    @user_address.destroy
    redirect_to user_addresses_path, notice: "Address was successfully deleted."
  end


  def user_address_params
    params.require(:user_address).permit(:user_id, address_attributes: [:id, :username, :address, :wallet_id])
  end


end
