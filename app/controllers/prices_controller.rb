class PricesController < ApplicationController
  def new
    @price = Price.new
  end

  def create
    @price = Price.new.prix_total(price_params)
    render :template "price"
  end

  def price
  end


  private

  def price_params
    params.require(:price).permit(:conso, :puissance)
  end
end
