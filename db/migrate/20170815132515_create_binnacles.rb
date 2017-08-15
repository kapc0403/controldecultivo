class CreateBinnacles < ActiveRecord::Migration[5.1]
  def change
    create_table :binnacles do |t|
      t.references :user, foreign_key: true
      t.references :farming, foreign_key: true
      t.string :fecha
      t.string :temperatura
      t.string :nroriegos
      t.text :observaciones
      t.string :foto1
      t.string :foto2
      t.string :foto3

      t.timestamps
    end
  end
end
