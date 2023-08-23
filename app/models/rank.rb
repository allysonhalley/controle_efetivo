class Rank
  include Mongoid::Document
  include Mongoid::Timestamps
  field :full_rank, type: String
  field :short_rank, type: String
  field :acronym, type: String
  field :type, type: String
  field :rate, type: Number
  belongs_to :rank_type
end
