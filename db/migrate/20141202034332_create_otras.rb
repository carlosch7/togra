class CreateOtras < ActiveRecord::Migration
  def change
    create_table :otras do |t|
      t.string :fuenteingre
      t.string :cualfuen
      t.boolean :cuentab
      t.string :numcuent
      t.boolean :tarjetdc
      t.string :cuantarj
      t.boolean :prestam
      t.string :tipoprestamo
      t.integer :grupo_id
      t.integer :locate_id

      t.timestamps
    end
  end
end
