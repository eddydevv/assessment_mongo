class AssessmentSubtype
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  has_many :assessment_units
  belongs_to :year
  belongs_to :assessment_type
end
