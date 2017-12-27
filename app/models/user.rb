class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :nombre, :apellido, :username, :email,
                  :password, :password_confirmation

  has_many :statuses

  validates :nombre, :apellido, :username, presence: true
  validates :username, uniqueness: true

  def nombre_completo
    nombre + " " + apellido
  end
end
