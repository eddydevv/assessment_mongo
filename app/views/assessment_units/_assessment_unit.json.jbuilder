json.extract! assessment_unit, :id, :name, :description, :year_id, :assessment_subtype_id, :created_at, :updated_at
json.url assessment_unit_url(assessment_unit, format: :json)