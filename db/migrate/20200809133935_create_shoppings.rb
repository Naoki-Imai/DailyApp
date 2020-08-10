class CreateShoppings < ActiveRecord::Migration[5.2]
  def change
    create_table :shoppings do |t|
      t.string :thing
      t.string :place

      t.timestamps
    end
  end
end
