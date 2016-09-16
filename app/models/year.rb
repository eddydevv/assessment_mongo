class Year
  include Mongoid::Document
  field :name, type: String
  field :comment, type: String
end
