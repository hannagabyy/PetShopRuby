class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :contato
      t.string :endereco
      
      t.timestamps
    end
    change_table :veterinario do |t|
       t.belongs_to :cliente,foreign_key :true, null: false,after :id
    end
  end
end
