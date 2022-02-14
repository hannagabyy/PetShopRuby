class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :nome
      t.integer :idade

      t.timestamps
    end
  end
end
