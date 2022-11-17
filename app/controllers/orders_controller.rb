class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    # order = current_user.orders
    # render json: order.as_json
    @orders = current_user.orders
    render template: "orders/index"
  end

  def show
    # order = current_user.orders.find_by(id: params[:id])
    # if order
    #   render json: order.as_json
    @order = current_user.orders.find_by(id: params[:id])
    
    if @order
      render template: "orders/show"
    else
      render json: {message: "STOP, in the Name of ... Nice Try not your order!"}
    end
  end
  
  def create
    carted_products = current_user.carted_products.where(status: "carted")

    calc_subtotal = 0
    carted_products.each do |carted_product|
      calc_subtotal += carted_product.quantity * carted_product.product.price
    end

    calc_tax = calc_subtotal * 0.09
    calc_total = calc_subtotal + calc_tax
  
    order = Order.new(
      user_id: current_user.id,
      subtotal:calc_subtotal,
      tax:calc_tax,
      total:calc_total
    )

    if order.save
      # carted_products.update_all()

      render json: order.as_json
    else
      render json: {errors: order.errors.full_messages}, status: :unprocessable_entity #or 422
    end

  end

end
