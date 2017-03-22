class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.string :numero
      t.string :bairro
      t.references :Cliente, foreign_key: true

      t.timestamps
    end
  end
end
