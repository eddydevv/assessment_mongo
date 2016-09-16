class TemplateDatum
  include Mongoid::Document
  field :data, type: String
  embedded_in :template_sublayout
end
