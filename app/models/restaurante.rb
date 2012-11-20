class Restaurante < ActiveRecord::Base
  attr_accessible :descripcion, :direccion, :foto, :latitud, :longitud, :nombre, :telefono, :web
end
