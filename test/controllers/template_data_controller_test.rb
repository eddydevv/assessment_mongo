require "test_helper"

describe TemplateDataController do
  let(:template_datum) { template_data :one }

  it "gets index" do
    get template_data_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_template_datum_url
    value(response).must_be :success?
  end

  it "creates template_datum" do
    expect {
      post template_data_url, params: { template_datum: { data: template_datum.data, template_sublayout_id: template_datum.template_sublayout_id } }
    }.must_change "TemplateDatum.count"

    must_redirect_to template_datum_path(TemplateDatum.last)
  end

  it "shows template_datum" do
    get template_datum_url(template_datum)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_template_datum_url(template_datum)
    value(response).must_be :success?
  end

  it "updates template_datum" do
    patch template_datum_url(template_datum), params: { template_datum: { data: template_datum.data, template_sublayout_id: template_datum.template_sublayout_id } }
    must_redirect_to template_datum_path(template_datum)
  end

  it "destroys template_datum" do
    expect {
      delete template_datum_url(template_datum)
    }.must_change "TemplateDatum.count", -1

    must_redirect_to template_data_path
  end
end
