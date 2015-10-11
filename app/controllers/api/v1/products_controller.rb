class Api::V1::ProductsController < ApplicationController
  before_action :authenticate_with_token!, only: [:create]

  def index
    render json: { :products => Product.all }
  end

  def show
    render json: Product.find(params[:id])
  end

  def create
    product = current_user.products.build(product_param)
    if product.save
      render json: product, status: 201, location: [:api, product]
    else
      render json: { errors: product.errors }, status: 422
    end
  end

  private

    def product_param
      params.require(:product).permit(:title, :price, :published)
    end

end
