class Section
  include Mongoid::Document
  field :name, type: String
  embedded_in :template_sublayout
end
