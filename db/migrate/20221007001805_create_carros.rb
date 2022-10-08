class CreateCarros < ActiveRecord::Migration[7.0]
  def change
    create_table :carros do |t|
      t.string :marca
      t.string :modelo
      t.integer :año
      t.string :tipo
      t.integer :precio
      t.string :estado

      t.timestamps
    end
  end
end
