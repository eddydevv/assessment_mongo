require "test_helper"

describe RubricsController do
  let(:rubric) { rubrics :one }

  it "gets index" do
    get rubrics_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_rubric_url
    value(response).must_be :success?
  end

  it "creates rubric" do
    expect {
      post rubrics_url, params: { rubric: { assessment_type_id: rubric.assessment_type_id, description: rubric.description, name: rubric.name, year_id: rubric.year_id } }
    }.must_change "Rubric.count"

    must_redirect_to rubric_path(Rubric.last)
  end

  it "shows rubric" do
    get rubric_url(rubric)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_rubric_url(rubric)
    value(response).must_be :success?
  end

  it "updates rubric" do
    patch rubric_url(rubric), params: { rubric: { assessment_type_id: rubric.assessment_type_id, description: rubric.description, name: rubric.name, year_id: rubric.year_id } }
    must_redirect_to rubric_path(rubric)
  end

  it "destroys rubric" do
    expect {
      delete rubric_url(rubric)
    }.must_change "Rubric.count", -1

    must_redirect_to rubrics_path
  end
end
