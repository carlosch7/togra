class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.integer :edad
      t.string :sexo
      t.string :cedula
      t.string :lugfam
      t.string :nivestu
      t.string :titul
      t.string :servsalud
      t.string :cajcomp
      t.string :pension
      t.string :etnia
      t.string :actiecom
      t.boolean :gruporel
      t.string :cualgrup
      t.string :sectortrab
      t.integer :grupo_id
      t.integer :otra_id
      t.integer :locate_id

      t.timestamps
    end
  end
end
