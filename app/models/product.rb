class Product < ApplicationRecord


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
