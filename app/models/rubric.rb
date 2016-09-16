class Rubric
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  embedded_in :year
  embedded_in :assessment_type
end
