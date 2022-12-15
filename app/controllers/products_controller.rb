class ProductsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all

    if params[:category]
      category =Category.find_by(name: params[:category])
      @products =category.products
    end
    render template: "products/index"
  end

  def show
    product = Product.find_by(id: params["id"])
    @product = product
    render template: "products/show"

  end

  def create
    product = Product.new(
      name:params[:name],
      price:params[:price],
      description:params[:description],
      quantity:params[:quantity],
      supplier_id:params[:supplier_id]
    )

    if product.save
      @product = product
      render template: "products/show"
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    product_id = params[:id]
    product = Product.find(product_id)

    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.quantity = params[:quantity] || product.quantity
    product.description = params[:description] || product.description
    product.supplier_id = params[:supplier_id] || product.supplier_id

    if product.save
      @product = product
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find(product_id)

    product.destroy
    render json: {message: "This has been destroyed"}
  end  




end
