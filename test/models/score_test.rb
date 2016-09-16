require "test_helper"

describe Score do
  let(:score) { Score.new }

  it "must be valid" do
    value(score).must_be :valid?
  end
end
