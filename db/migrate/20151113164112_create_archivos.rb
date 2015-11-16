class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|
      t.string :my_file

      t.timestamps null: false
    end
  end
end
