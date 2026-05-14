class CreateItems < ActiveRecord::Migration[8.1]
  def change
    create_table :items do |t|
      t.references :id_inventario, null: false, foreign_key: true
      t.string :nome
      t.string :tipo
      t.string :raridade
      t.decimal :peso

      t.timestamps
    end
  end
end
