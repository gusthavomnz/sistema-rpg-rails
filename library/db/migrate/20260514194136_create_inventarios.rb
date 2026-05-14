class CreateInventarios < ActiveRecord::Migration[8.1]
  def change
    create_table :inventarios do |t|
      t.integer :capacidade_maxima
      t.integer :euro

      t.timestamps
    end
  end
end
