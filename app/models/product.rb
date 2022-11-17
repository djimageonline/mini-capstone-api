class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500} 


  #### More steps way:
  # def categories
  #   result = category_products.each do |category_product|
  #     category_product.category
  #   end    
  # end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    price.to_i < 10
  end

  def tax
    tax = price.to_i * 0.09 
    tax.round(2)
  end

  def total
    price.to_i + tax
  end

end
