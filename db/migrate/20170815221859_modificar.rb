class Modificar < ActiveRecord::Migration[5.1]
  def change
    add_column :farmings, :est_inscritos, :string
  end
end
