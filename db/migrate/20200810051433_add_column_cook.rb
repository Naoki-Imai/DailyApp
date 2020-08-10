class AddColumnCook < ActiveRecord::Migration[5.2]
  def up
    add_column :cooks, :url, :text
  end
end
