class ProductsController < ApplicationController


  def all_prodcuts
    all_prodcuts = Product.all
    render json: all_prodcuts.as_json
  end

  # def first_product
  #   first_product = Product.first
  #   render json: first_product.as_json
  # end

  # def second_prodcut
  #   second_prodcut = Product.second
  #   render json: second_prodcut.as_json
  # end

  # def third_prodcut
  #   third_prodcut = Product.third
  #   render json: third_prodcut.as_json
  # end

  def one_product
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end

end
