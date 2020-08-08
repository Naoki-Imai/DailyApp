class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :content
      t.date :limit

      t.timestamps
    end
  end
end
