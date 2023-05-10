class BlockchainsController < ApplicationController
  def index
    @blockchains = Blockchain.all
  end

  def show
    @blockchain = Blockchain.find(params[:id])
  end

  def edit
    @blockchain = Blockchain.find(params[:id])
  end

  def update
    @blockchain = Blockchain.find(params[:id])
    @blockchain.update(blockchain_params)
    redirect_to blockchains_path, notice: "Blockchain was successfully updated."
  end

  def new
    @blockchain = Blockchain.new
  end

  def create
    @blockchain = Blockchain.create(blockchain_params)
    redirect_to blockchains_path, notice: "Blockchain was successfully created."
  end

  def destroy
    @blockchain = Blockchain.find(params[:id])
    @blockchain.destroy
    redirect_to blockchains_path, notice: "Blockchain was successfully deleted."
  end

  def blockchain_params
    params.require(:blockchain).permit(:name, :description)
  end

end
