require 'test_helper'

class RanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rank = ranks(:one)
  end

  test "should get index" do
    get ranks_url, as: :json
    assert_response :success
  end

  test "should create rank" do
    assert_difference('Rank.count') do
      post ranks_url, params: { rank: { acronym: @rank.acronym, full_rank: @rank.full_rank, rank_type_id: @rank.rank_type_id, rate: @rank.rate, short_rank: @rank.short_rank, type: @rank.type } }, as: :json
    end

    assert_response 201
  end

  test "should show rank" do
    get rank_url(@rank), as: :json
    assert_response :success
  end

  test "should update rank" do
    patch rank_url(@rank), params: { rank: { acronym: @rank.acronym, full_rank: @rank.full_rank, rank_type_id: @rank.rank_type_id, rate: @rank.rate, short_rank: @rank.short_rank, type: @rank.type } }, as: :json
    assert_response 200
  end

  test "should destroy rank" do
    assert_difference('Rank.count', -1) do
      delete rank_url(@rank), as: :json
    end

    assert_response 204
  end
end
