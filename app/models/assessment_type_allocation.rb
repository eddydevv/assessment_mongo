class AssessmentTypeAllocation
  include Mongoid::Document
  field :comment, type: String
  belongs_to :assessment_type
  belongs_to :user
end
