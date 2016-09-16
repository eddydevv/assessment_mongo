require "test_helper"

describe TemplateDatum do
  let(:template_datum) { TemplateDatum.new }

  it "must be valid" do
    value(template_datum).must_be :valid?
  end
end
