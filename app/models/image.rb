class Image < ApplicationRecord
  def images
    Product.where(url: id)
  end
end
