require 'test_helper'

class RankTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rank_type = rank_types(:one)
  end

  test "should get index" do
    get rank_types_url, as: :json
    assert_response :success
  end

  test "should create rank_type" do
    assert_difference('RankType.count') do
      post rank_types_url, params: { rank_type: { acronym: @rank_type.acronym, name: @rank_type.name, type: @rank_type.type } }, as: :json
    end

    assert_response 201
  end

  test "should show rank_type" do
    get rank_type_url(@rank_type), as: :json
    assert_response :success
  end

  test "should update rank_type" do
    patch rank_type_url(@rank_type), params: { rank_type: { acronym: @rank_type.acronym, name: @rank_type.name, type: @rank_type.type } }, as: :json
    assert_response 200
  end

  test "should destroy rank_type" do
    assert_difference('RankType.count', -1) do
      delete rank_type_url(@rank_type), as: :json
    end

    assert_response 204
  end
end
