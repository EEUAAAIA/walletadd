class UserBlockchainsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_blockchains = UserBlockchain.where(user_id: current_user.id)
  end

  def show
    @user_blockchain = UserBlockchain.find(params[:id])
  end

  def edit
    @user_blockchain = UserBlockchain.find(params[:id])
    @blockchain = @user_blockchain.blockchain
  end

  def update
    @user_blockchain = UserBlockchain.find(params[:id])
    @user_blockchain.update(user_blockchain_params)
    redirect_to user_blockchains_path, notice: "Blockchain was successfully updated."
  end

  def new
    @user_blockchain = UserBlockchain.new
    @user_blockchain.build_blockchain
  end

  def create
    @user_blockchain = UserBlockchain.new(user_blockchain_params)
    @user_blockchain.user = current_user
    if @user_blockchain.save
      redirect_to user_blockchains_path, notice: "Blockchain was successfully created."
    else
      render :new
    end
  end

  def destroy
    @user_blockchain = UserBlockchain.find(params[:id])
    @user_blockchain.destroy
    redirect_to user_blockchains_path, notice: "Blockchain was successfully deleted."
  end

  def user_blockchain_params
    params.require(:user_blockchain).permit(:user_id, blockchain_attributes: [:id, :name, :description])
  end


end
