class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :famil
      t.string :dir
      t.string :tel
      t.string :tipcasa
      t.string :estrato
      t.boolean :serv
      t.string :tipserv
      t.string :habit
      t.string :picasa
      t.string :murcasa
      t.string :basura
      t.string :eqcoc
      t.string :eqsal
      t.string :eqhabi
      t.string :eqcom
      t.integer :locate_id

      t.timestamps
    end
  end
end
