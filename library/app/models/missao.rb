class Missao < ApplicationRecord
  has_many :personagem_missaos, foreign_key: :id_missao_id
end
