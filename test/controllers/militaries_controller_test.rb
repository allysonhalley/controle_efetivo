require 'test_helper'

class MilitariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @military = militaries(:one)
  end

  test "should get index" do
    get militaries_url, as: :json
    assert_response :success
  end

  test "should create military" do
    assert_difference('Military.count') do
      post militaries_url, params: { military: { military_code: @military.military_code, military_register: @military.military_register, nickname: @military.nickname, person_id: @military.person_id, rank_id: @military.rank_id } }, as: :json
    end

    assert_response 201
  end

  test "should show military" do
    get military_url(@military), as: :json
    assert_response :success
  end

  test "should update military" do
    patch military_url(@military), params: { military: { military_code: @military.military_code, military_register: @military.military_register, nickname: @military.nickname, person_id: @military.person_id, rank_id: @military.rank_id } }, as: :json
    assert_response 200
  end

  test "should destroy military" do
    assert_difference('Military.count', -1) do
      delete military_url(@military), as: :json
    end

    assert_response 204
  end
end
