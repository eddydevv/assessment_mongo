json.extract! assessment_subtype, :id, :name, :description, :year_id, :assessment_type_id, :created_at, :updated_at
json.url assessment_subtype_url(assessment_subtype, format: :json)