class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @order = current_user.orders
    render json: @order.as_json
    #render template: "orders/index"
  end

  def show
    order = current_user.orders.find_by(id: params[:id])
    if order
      render json: order.as_json
    else
      render json: {message: "STOP, in the Name of ... Nice Try!"}
    end
  end
  
  def create
    product = Product.find(params[:product_id])
    
    price = product.price

    calc_subtotal = price * params[:quantity]
    calc_tax = calc_subtotal * 0.09
    calc_total = calc_subtotal + calc_tax
  
    order = Order.new(
      user_id: current_user.id,
      product_id:params[:product_id],
      quantity:params[:quantity],  
      subtotal:calc_subtotal,
      tax:calc_tax,
      total:calc_total
    )

    if order.save
      render json: order.as_json
    else
      render json: {errors: order.errors.full_messages}, status: :unprocessable_entity #or 422
    end
  end
end
