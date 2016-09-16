require "test_helper"

describe AssessmentPlan do
  let(:assessment_plan) { AssessmentPlan.new }

  it "must be valid" do
    value(assessment_plan).must_be :valid?
  end
end
