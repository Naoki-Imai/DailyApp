class AddColumnCooks < ActiveRecord::Migration[5.2]
  def up
    add_column :cooks, :how, :text
  end
end
