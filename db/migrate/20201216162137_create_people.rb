class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :correo
      t.date :f_nacimiento

      t.timestamps
    end
  end
end
