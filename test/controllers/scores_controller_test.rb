require "test_helper"

describe ScoresController do
  let(:score) { scores :one }

  it "gets index" do
    get scores_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_score_url
    value(response).must_be :success?
  end

  it "creates score" do
    expect {
      post scores_url, params: { score: { name: score.name, number: score.number, rubric_id: score.rubric_id, template_layout_id: score.template_layout_id, user_id: score.user_id } }
    }.must_change "Score.count"

    must_redirect_to score_path(Score.last)
  end

  it "shows score" do
    get score_url(score)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_score_url(score)
    value(response).must_be :success?
  end

  it "updates score" do
    patch score_url(score), params: { score: { name: score.name, number: score.number, rubric_id: score.rubric_id, template_layout_id: score.template_layout_id, user_id: score.user_id } }
    must_redirect_to score_path(score)
  end

  it "destroys score" do
    expect {
      delete score_url(score)
    }.must_change "Score.count", -1

    must_redirect_to scores_path
  end
end
