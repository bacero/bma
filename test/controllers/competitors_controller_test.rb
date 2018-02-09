require 'test_helper'

class CompetitorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competitor = competitors(:one)
  end

  test "should get index" do
    get competitors_url
    assert_response :success
  end

  test "should get new" do
    get new_competitor_url
    assert_response :success
  end

  test "should create competitor" do
    assert_difference('Competitor.count') do
      post competitors_url, params: { competitor: { cellphone: @competitor.cellphone, email: @competitor.email, habeas_data: @competitor.habeas_data, identification: @competitor.identification, last_name: @competitor.last_name, name: @competitor.name, town_id: @competitor.town_id } }
    end

    assert_redirected_to competitor_url(Competitor.last)
  end

  test "should show competitor" do
    get competitor_url(@competitor)
    assert_response :success
  end

  test "should get edit" do
    get edit_competitor_url(@competitor)
    assert_response :success
  end

  test "should update competitor" do
    patch competitor_url(@competitor), params: { competitor: { cellphone: @competitor.cellphone, email: @competitor.email, habeas_data: @competitor.habeas_data, identification: @competitor.identification, last_name: @competitor.last_name, name: @competitor.name, town_id: @competitor.town_id } }
    assert_redirected_to competitor_url(@competitor)
  end

  test "should destroy competitor" do
    assert_difference('Competitor.count', -1) do
      delete competitor_url(@competitor)
    end

    assert_redirected_to competitors_url
  end
end
