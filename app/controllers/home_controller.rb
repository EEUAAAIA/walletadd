class HomeController < ApplicationController
  def index
    @blockchains = Blockchain.all
  end
end
