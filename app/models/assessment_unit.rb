class AssessmentUnit
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  belongs_to :year
  belongs_to :assessment_subtype
end
