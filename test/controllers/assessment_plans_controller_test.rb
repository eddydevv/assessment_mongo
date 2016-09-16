require "test_helper"

describe AssessmentPlansController do
  let(:assessment_plan) { assessment_plans :one }

  it "gets index" do
    get assessment_plans_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_assessment_plan_url
    value(response).must_be :success?
  end

  it "creates assessment_plan" do
    expect {
      post assessment_plans_url, params: { assessment_plan: { assessment_unit_id: assessment_plan.assessment_unit_id, name: assessment_plan.name, year_id: assessment_plan.year_id } }
    }.must_change "AssessmentPlan.count"

    must_redirect_to assessment_plan_path(AssessmentPlan.last)
  end

  it "shows assessment_plan" do
    get assessment_plan_url(assessment_plan)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_assessment_plan_url(assessment_plan)
    value(response).must_be :success?
  end

  it "updates assessment_plan" do
    patch assessment_plan_url(assessment_plan), params: { assessment_plan: { assessment_unit_id: assessment_plan.assessment_unit_id, name: assessment_plan.name, year_id: assessment_plan.year_id } }
    must_redirect_to assessment_plan_path(assessment_plan)
  end

  it "destroys assessment_plan" do
    expect {
      delete assessment_plan_url(assessment_plan)
    }.must_change "AssessmentPlan.count", -1

    must_redirect_to assessment_plans_path
  end
end
