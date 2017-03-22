class CreateVendas < ActiveRecord::Migration[5.0]
  def change
    create_table :vendas do |t|
      t.integer :quantidade
      t.integer :valor
      t.string :data
      t.string :valor_unitario
      t.integer :situacao
      t.references :Produto, foreign_key: true
      t.references :Cliente, foreign_key: true

      t.timestamps
    end
  end
end
