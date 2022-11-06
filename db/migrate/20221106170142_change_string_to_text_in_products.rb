class ChangeStringToTextInProducts < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :description, :text
    add_column :products, :quantity, :integer

  end
end
