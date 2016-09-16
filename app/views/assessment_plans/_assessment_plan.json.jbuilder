json.extract! assessment_plan, :id, :name, :year_id, :assessment_unit_id, :created_at, :updated_at
json.url assessment_plan_url(assessment_plan, format: :json)