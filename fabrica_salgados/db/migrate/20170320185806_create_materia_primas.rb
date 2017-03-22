class CreateMateriaPrimas < ActiveRecord::Migration[5.0]
  def change
    create_table :materia_primas do |t|
      t.string :valor
      t.string :descricao

      t.timestamps
    end
  end
end
