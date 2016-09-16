class AssessmentType
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  has_many :assessment_subtypes
  belongs_to :year
end
