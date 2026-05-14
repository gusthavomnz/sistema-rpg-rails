class Item < ApplicationRecord
  belongs_to :id_inventario, class_name: 'Inventario'
end
