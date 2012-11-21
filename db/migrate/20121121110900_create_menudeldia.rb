class CreateMenudeldia < ActiveRecord::Migration
  def change
    create_table :menudeldia do |t|
      t.text :primeros
      t.text :segundos
      t.string :extras
      t.float :precio
      t.date :fecha
	  t.integer :restaurante_id
      t.timestamps
    end
  end
end
