class CreateFarmings < ActiveRecord::Migration[5.1]
  def change
    create_table :farmings do |t|
      t.references :user, foreign_key: true
      t.string :semilla
      t.text :recomendaciones

      t.timestamps
    end
  end
end
