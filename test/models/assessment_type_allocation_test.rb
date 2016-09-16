require "test_helper"

describe AssessmentTypeAllocation do
  let(:assessment_type_allocation) { AssessmentTypeAllocation.new }

  it "must be valid" do
    value(assessment_type_allocation).must_be :valid?
  end
end
