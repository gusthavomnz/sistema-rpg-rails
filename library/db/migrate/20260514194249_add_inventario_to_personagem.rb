class AddInventarioToPersonagem < ActiveRecord::Migration[8.1]
  def change
    add_reference :personagems, :id_inventario, null: false, foreign_key: { to_table: :inventarios }
  end
end
