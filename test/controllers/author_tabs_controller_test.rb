require "test_helper"

class AuthorTabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @author_tab = author_tabs(:one)
  end

  test "should get index" do
    get author_tabs_url
    assert_response :success
  end

  test "should get new" do
    get new_author_tab_url
    assert_response :success
  end

  test "should create author_tab" do
    assert_difference('AuthorTab.count') do
      post author_tabs_url, params: { author_tab: { author_name: @author_tab.author_name, date_of_birth: @author_tab.date_of_birth } }
    end

    assert_redirected_to author_tab_url(AuthorTab.last)
  end

  test "should show author_tab" do
    get author_tab_url(@author_tab)
    assert_response :success
  end

  test "should get edit" do
    get edit_author_tab_url(@author_tab)
    assert_response :success
  end

  test "should update author_tab" do
    patch author_tab_url(@author_tab), params: { author_tab: { author_name: @author_tab.author_name, date_of_birth: @author_tab.date_of_birth } }
    assert_redirected_to author_tab_url(@author_tab)
  end

  test "should destroy author_tab" do
    assert_difference('AuthorTab.count', -1) do
      delete author_tab_url(@author_tab)
    end

    assert_redirected_to author_tabs_url
  end
end
