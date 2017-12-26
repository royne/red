class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :nombre, :apellido, :username, :email,
                  :password, :password_confirmation

  has_many :statuses

  def nombre_completo
    nombre + " " + apellido
  end
end
