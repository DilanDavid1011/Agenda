class Person < ApplicationRecord
  validates :nombre,:segundo_nombre,:apellido,:segundo_apellido,:direccion, :correo, presence: true
  validates :correo, uniqueness: true

end
