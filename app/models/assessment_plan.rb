class AssessmentPlan
  include Mongoid::Document
  field :name, type: String
  belongs_to :year
  belongs_to :assessment_unit
end
