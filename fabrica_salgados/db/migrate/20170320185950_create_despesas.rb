class CreateDespesas < ActiveRecord::Migration[5.0]
  def change
    create_table :despesas do |t|
      t.string :data
      t.string :valor
      t.references :Materia_Prima, foreign_key: true

      t.timestamps
    end
  end
end
