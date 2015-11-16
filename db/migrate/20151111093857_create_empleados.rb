class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.integer :edad
      t.string :puesto
      t.integer :salario

      t.timestamps null: false
    end
  end
end
