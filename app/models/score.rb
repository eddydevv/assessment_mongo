class Score
  include Mongoid::Document
  field :name, type: String
  field :number, type: Integer
  embedded_in :template_layout
  embedded_in :rubric
  embedded_in :user
end
