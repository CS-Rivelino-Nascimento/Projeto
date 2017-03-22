class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.string :valor
      t.integer :situacao

      t.timestamps
    end
  end
end
