class CreateVeterinarios < ActiveRecord::Migration[7.0]
  def change
    create_table :veterinarios do |t|
      t.string :nome
      t.string :preco

      
      t.timestamps
    end
  end
end
