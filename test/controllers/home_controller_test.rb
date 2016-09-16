require "test_helper"

describe HomeController do
  it "should get index" do
    get home_index_url
    value(response).must_be :success?
  end

  it "should get about" do
    get home_about_url
    value(response).must_be :success?
  end

  it "should get calendar" do
    get home_calendar_url
    value(response).must_be :success?
  end

  it "should get faqs" do
    get home_faqs_url
    value(response).must_be :success?
  end

  it "should get contact" do
    get home_contact_url
    value(response).must_be :success?
  end

  it "should get wiki" do
    get home_wiki_url
    value(response).must_be :success?
  end

end
