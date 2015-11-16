class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.integer :edad
      t.string :enfermedad
      t.text :tratamiento

      t.timestamps null: false
    end
  end
end
