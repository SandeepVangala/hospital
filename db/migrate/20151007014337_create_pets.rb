class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :pet_type
      t.string :breed
      t.integer :age
      t.integer :weight
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
