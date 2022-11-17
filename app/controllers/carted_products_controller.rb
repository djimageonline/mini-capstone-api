class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    carted_product = CartedProduct.new(
      product_id:params[:product_id],
      quantity:params[:quantity],
      user_id:current_user.id,
      order_id:nil,
      status: "carted"
    )

    # render json: {message: "carted product created"}, status: :created
    
    if carted_product.save
      render json: carted_product.as_json
    else
      render json: { errors: carted_product.errors.full_messages }, status: 422
    end


  end
end
