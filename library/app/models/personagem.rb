class Personagem < ApplicationRecord
  belongs_to :id_inventario, class_name: 'Inventario'
  has_one :guerreiro, foreign_key: :id_personagem_id, dependent: :destroy
  has_one :mago, foreign_key: :id_personagem_id, dependent: :destroy
  has_one :ficha_de_status, foreign_key: :id_personagem_id, dependent: :destroy
  has_many :personagem_missaos, foreign_key: :id_personagem_id, dependent: :destroy
  has_many :missaos, through: :personagem_missaos, source: :id_missao
end
