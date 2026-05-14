class Inventario < ApplicationRecord
  has_one :personagem, foreign_key: :id_inventario_id, dependent: :destroy
  has_many :items, foreign_key: :id_inventario_id, dependent: :destroy
end
