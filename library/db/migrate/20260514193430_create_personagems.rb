class CreatePersonagems < ActiveRecord::Migration[8.1]
  def change
    create_table :personagems do |t|
      t.string :nome
      t.integer :nivel

      t.timestamps
    end
  end
end
