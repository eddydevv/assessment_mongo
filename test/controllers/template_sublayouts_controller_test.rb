require "test_helper"

describe TemplateSublayoutsController do
  let(:template_sublayout) { template_sublayouts :one }

  it "gets index" do
    get template_sublayouts_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_template_sublayout_url
    value(response).must_be :success?
  end

  it "creates template_sublayout" do
    expect {
      post template_sublayouts_url, params: { template_sublayout: { description: template_sublayout.description, input_type: template_sublayout.input_type, name: template_sublayout.name, section_num: template_sublayout.section_num, year_id: template_sublayout.year_id } }
    }.must_change "TemplateSublayout.count"

    must_redirect_to template_sublayout_path(TemplateSublayout.last)
  end

  it "shows template_sublayout" do
    get template_sublayout_url(template_sublayout)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_template_sublayout_url(template_sublayout)
    value(response).must_be :success?
  end

  it "updates template_sublayout" do
    patch template_sublayout_url(template_sublayout), params: { template_sublayout: { description: template_sublayout.description, input_type: template_sublayout.input_type, name: template_sublayout.name, section_num: template_sublayout.section_num, year_id: template_sublayout.year_id } }
    must_redirect_to template_sublayout_path(template_sublayout)
  end

  it "destroys template_sublayout" do
    expect {
      delete template_sublayout_url(template_sublayout)
    }.must_change "TemplateSublayout.count", -1

    must_redirect_to template_sublayouts_path
  end
end
