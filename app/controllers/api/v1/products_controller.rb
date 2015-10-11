class Api::V1::ProductsController < ApplicationController

  def index
    render json: { :products => Product.all }
  end

  def show
    render json: Product.find(params[:id])
  end

end
