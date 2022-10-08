class CreateConcesionaria < ActiveRecord::Migration[7.0]
  def change
    create_table :concesionaria do |t|
      t.string :nombre
      t.string :direccion
      t.integer :telefono

      t.timestamps
    end
  end
end
