class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    carted_product = CartedProduct.new(
      product_id:params[:product_id],
      quantity:params[:quantity],
      user_id:current_user.id,
      order_id:nil,
    )

    # render json: {message: "carted product created"}, status: :created
    render json: carted_product.as_json


  end
end
