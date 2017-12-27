class Status < ApplicationRecord
  attr_accessible :contenido, :user_id
  belongs_to :user

  validates :contenido, presence: true
end
