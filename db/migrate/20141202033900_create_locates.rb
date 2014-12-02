class CreateLocates < ActiveRecord::Migration
  def change
    create_table :locates do |t|
      t.string :departamento
      t.string :municipio
      t.string :gobernador
      t.string :alcalde
      t.date :fecha_inicio

      t.timestamps
    end
  end
end
