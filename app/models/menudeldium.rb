class Menudeldium < ActiveRecord::Base
  attr_accessible :extras, :fecha, :precio, :primeros, :segundos, :restaurante_id
  
  belongs_to :restaurante
end
