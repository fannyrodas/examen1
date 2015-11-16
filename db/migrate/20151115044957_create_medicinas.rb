class CreateMedicinas < ActiveRecord::Migration
  def change
    create_table :medicinas do |t|
      t.string :my_file

      t.timestamps null: false
    end
  end
end
