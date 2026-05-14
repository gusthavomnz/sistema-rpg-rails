class CreatePersonagemMissaos < ActiveRecord::Migration[8.1]
  def change
    create_table :personagem_missaos do |t|
      t.references :id_personagem, null: false, foreign_key: { to_table: :personagems }
      t.references :id_missao, null: false, foreign_key: { to_table: :missaos }

      t.timestamps
    end
  end
end
