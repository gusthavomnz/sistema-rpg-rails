class Mago < ApplicationRecord
  belongs_to :id_personagem, class_name: 'Personagem'
end
