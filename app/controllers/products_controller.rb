class ProductsController < ApplicationController


  def index
    index = Product.all
    render json: index.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    @product = product
    render template: "products/show"

  end

  def create
    pp params
    product = Product.new(
      name:params[:name],
      price:params[:price],
      image_url:params[:image_url],
      description:params[:description],
    )

    product.save
    @product = product

    render json: product.as_json
  end

  def update
    product_id = params[:id]
    product = Product.find(product_id)

    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description

    product.save
    @product = product
    render json: product.as_json
  end

  def destroy
    product_id = params[:id]
    product = Product.find(product_id)

    product.destroy
    render json: {message: "This has been destroyed"}
  end  




end
