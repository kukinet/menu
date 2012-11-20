class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :nombre
      t.text :descripcion
      t.string :foto
      t.string :web
      t.string :telefono
      t.string :direccion
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
