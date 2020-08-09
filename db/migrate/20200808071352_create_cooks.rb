class CreateCooks < ActiveRecord::Migration[5.2]
  def change
    create_table :cooks do |t|
      t.text :iframe
      t.string :title
      t.text :recipe

      t.timestamps
    end
  end
end
