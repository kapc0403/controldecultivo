class Addcolumn < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :cultivo, :string
  end
end
