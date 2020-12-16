class AddInfoToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :segundo_nombre, :string
    add_column :people, :segundo_apellido, :string
  end
end
