require "test_helper"

describe Rubric do
  let(:rubric) { Rubric.new }

  it "must be valid" do
    value(rubric).must_be :valid?
  end
end
