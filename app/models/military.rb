class Military
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nickname, type: String
  field :military_code, type: String
  field :military_register, type: String
  belongs_to :person
  belongs_to :rank
end
