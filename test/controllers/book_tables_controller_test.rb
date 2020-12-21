require "test_helper"

class BookTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_table = book_tables(:one)
  end

  test "should get index" do
    get book_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_book_table_url
    assert_response :success
  end

  test "should create book_table" do
    assert_difference('BookTable.count') do
      post book_tables_url, params: { book_table: { Published_year: @book_table.Published_year, book_title: @book_table.book_title } }
    end

    assert_redirected_to book_table_url(BookTable.last)
  end

  test "should show book_table" do
    get book_table_url(@book_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_table_url(@book_table)
    assert_response :success
  end

  test "should update book_table" do
    patch book_table_url(@book_table), params: { book_table: { Published_year: @book_table.Published_year, book_title: @book_table.book_title } }
    assert_redirected_to book_table_url(@book_table)
  end

  test "should destroy book_table" do
    assert_difference('BookTable.count', -1) do
      delete book_table_url(@book_table)
    end

    assert_redirected_to book_tables_url
  end
end
