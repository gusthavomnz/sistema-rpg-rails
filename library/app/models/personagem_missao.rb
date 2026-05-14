class PersonagemMissao < ApplicationRecord
  belongs_to :id_personagem, class_name: 'Personagem'
  belongs_to :id_missao, class_name: 'Missao'
end
