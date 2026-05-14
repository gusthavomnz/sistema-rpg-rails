class CreateGuerreiros < ActiveRecord::Migration[8.1]
  def change
    create_table :guerreiros do |t|
      t.references :id_personagem, null: false, foreign_key: { to_table: :personagems }
      t.integer :forca_base
      t.string :tipo_arma_preferida

      t.timestamps
    end
  end
end
