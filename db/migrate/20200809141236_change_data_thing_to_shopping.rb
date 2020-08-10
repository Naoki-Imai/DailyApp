class ChangeDataThingToShopping < ActiveRecord::Migration[5.2]
  def change
    change_column :shoppings, :thing, :text
  end
end
