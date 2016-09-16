class TemplateSublayout
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :section_num, type: Integer
  field :input_type, type: String
  embedded_in :year
end
