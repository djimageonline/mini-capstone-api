class Product < ApplicationRecord


  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    if price.to_i < 10
      true
    else
      false
    end
  end

  def tax
    taxes = price.to_i * 0.09
    taxes 
  end

  def total
    taxes = price.to_i * 0.09
    total_price = taxes + price.to_i
    total_price 
  end





end
