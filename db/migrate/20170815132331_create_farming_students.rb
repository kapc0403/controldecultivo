class CreateFarmingStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :farming_students do |t|
      t.references :user, foreign_key: true
      t.references :farming, foreign_key: true

      t.timestamps
    end
  end
end
