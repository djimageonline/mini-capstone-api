class Category < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products


  ### This is harder, more code then line 3
  # def products
  #   result = category_products.each do |category_product|
  #     category_product.product
  #   end    
  # end
end
