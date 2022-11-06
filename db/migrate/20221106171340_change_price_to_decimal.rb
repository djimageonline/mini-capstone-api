class ChangePriceToDecimal < ActiveRecord::Migration[7.0]
  def change
    #this line tells rails all in this column with string can be changed to numbers
    change_column :products, :price, "numeric USING CAST(price AS numeric)"

    #this line changes to decimal
    change_column :products, :price, :decimal, precision: 9, scale: 2
  end
end
