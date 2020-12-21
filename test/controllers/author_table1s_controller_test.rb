require "test_helper"

class AuthorTable1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @author_table1 = author_table1s(:one)
  end

  test "should get index" do
    get author_table1s_url
    assert_response :success
  end

  test "should get new" do
    get new_author_table1_url
    assert_response :success
  end

  test "should create author_table1" do
    assert_difference('AuthorTable1.count') do
      post author_table1s_url, params: { author_table1: { author_name: @author_table1.author_name, date_of_birth: @author_table1.date_of_birth } }
    end

    assert_redirected_to author_table1_url(AuthorTable1.last)
  end

  test "should show author_table1" do
    get author_table1_url(@author_table1)
    assert_response :success
  end

  test "should get edit" do
    get edit_author_table1_url(@author_table1)
    assert_response :success
  end

  test "should update author_table1" do
    patch author_table1_url(@author_table1), params: { author_table1: { author_name: @author_table1.author_name, date_of_birth: @author_table1.date_of_birth } }
    assert_redirected_to author_table1_url(@author_table1)
  end

  test "should destroy author_table1" do
    assert_difference('AuthorTable1.count', -1) do
      delete author_table1_url(@author_table1)
    end

    assert_redirected_to author_table1s_url
  end
end
