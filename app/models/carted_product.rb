class CartedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :user
  belongs_to :order, optional: true

  # def status_change
  #   change_column :carted_products, :status, :string, default: "carted"
  # end



end
