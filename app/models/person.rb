class Person
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :cpf, type: String
  field :rg, type: String
  field :birthdate, type: Date
  field :placebirth, type: String
  field :gender, type: String
  field :email, type: String
  field :phone, type: String

  has_many :military, dependent: :destroy
  has_many :address, dependent: :destroy
end
