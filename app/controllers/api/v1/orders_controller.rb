class Api::V1::OrdersController < ApplicationController
  before_action :authenticate_with_token!

  def index
    orders = current_user.orders
    render json: orders, meta: { pagination: { per_page: params[:per_page],
                                               total_pages: orders.total_pages,
                                               total_objects: orders.total_count } }
  end

  def show
    render json: current_user.orders.find(params[:id])
  end

  def create
    order = current_user.orders.build
    order.build_placement_with_product_ids_and_quantities(params[:order][:product_ids_and_quantities])

    if order.save
      order.reload
      render json: order, status: 201, location: [:api, current_user, order]
    else
      render json: { errors: current_user.errors}, status: 422
    end
  end

  private

    def order_params
      params.require(:order).permit(:product_ids)
    end
end
