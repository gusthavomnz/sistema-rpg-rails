class CreateFichaDeStatuses < ActiveRecord::Migration[8.1]
  def change
    create_table :ficha_de_statuses do |t|
      t.references :id_personagem, null: false, foreign_key: { to_table: :personagems }
      t.integer :vida
      t.integer :mana
      t.integer :forca
      t.integer :defesa
      t.integer :inteligencia

      t.timestamps
    end
  end
end
