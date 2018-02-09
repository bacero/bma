class Competitor < ApplicationRecord
#Relations
  belongs_to :town
  has_many :winners
#Relations
#Validations
  validates :name, :presence => true
  validates :last_name, :presence => true
  validates :identification, :presence => true, :uniqueness => { message: "El numero de CEDULA ya se encuentra inscrito !" }
  validates :cellphone, :presence => true, :uniqueness => { message: "El numero CELULAR ya se encuentra inscrito" }
  validates :email, :presence => true, :uniqueness => { message: "El EMAIL ya se encuentra inscrito !" }
#Validations
end
