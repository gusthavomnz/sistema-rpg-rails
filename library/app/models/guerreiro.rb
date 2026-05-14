class Guerreiro < ApplicationRecord
  belongs_to :id_personagem, class_name: 'Personagem'
end
