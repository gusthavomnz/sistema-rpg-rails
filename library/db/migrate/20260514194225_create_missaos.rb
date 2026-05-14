class CreateMissaos < ActiveRecord::Migration[8.1]
  def change
    create_table :missaos do |t|
      t.string :titulo
      t.string :descricao
      t.string :raridade
      t.integer :recompensa_xp

      t.timestamps
    end
  end
end
