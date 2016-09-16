require "test_helper"

describe YearsController do
  let(:year) { years :one }

  it "gets index" do
    get years_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_year_url
    value(response).must_be :success?
  end

  it "creates year" do
    expect {
      post years_url, params: { year: { comment: year.comment, name: year.name } }
    }.must_change "Year.count"

    must_redirect_to year_path(Year.last)
  end

  it "shows year" do
    get year_url(year)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_year_url(year)
    value(response).must_be :success?
  end

  it "updates year" do
    patch year_url(year), params: { year: { comment: year.comment, name: year.name } }
    must_redirect_to year_path(year)
  end

  it "destroys year" do
    expect {
      delete year_url(year)
    }.must_change "Year.count", -1

    must_redirect_to years_path
  end
end
