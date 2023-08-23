class RankType
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :acronym, type: String
  field :type, type: String
end
