class OrdersController < ApplicationController

  
  def create
    pp params
    order = Order.new(
      product_id:params[:product_id],
      quantity:params[:quantity],  
      subtotal:params[:subtotal],
      tax:params[:params],
      total:params[:total],
      user_id:params[:user_id]
    )

    if order.save
      render json: order.as_json
    else
      render json: {errors: order.errors.full_messages}, status: :unprocessable_entity
    end
  end

    def show
      order = Order.find_by(id: params["id"])
      render template: "orders/show"
    end

end
