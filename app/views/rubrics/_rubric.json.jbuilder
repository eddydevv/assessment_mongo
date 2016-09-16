json.extract! rubric, :id, :name, :description, :year_id, :assessment_type_id, :created_at, :updated_at
json.url rubric_url(rubric, format: :json)