require "test_helper"

describe TemplateSublayout do
  let(:template_sublayout) { TemplateSublayout.new }

  it "must be valid" do
    value(template_sublayout).must_be :valid?
  end
end
