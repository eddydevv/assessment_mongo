json.extract! assessment_type, :id, :name, :description, :year_id, :created_at, :updated_at
json.url assessment_type_url(assessment_type, format: :json)