class CreateMagos < ActiveRecord::Migration[8.1]
  def change
    create_table :magos do |t|
      t.references :id_personagem, null: false, foreign_key: { to_table: :personagems }
      t.integer :mana_base
      t.string :escola_magia

      t.timestamps
    end
  end
end
