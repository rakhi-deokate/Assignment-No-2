require "application_system_test_case"

class BookTablesTest < ApplicationSystemTestCase
  setup do
    @book_table = book_tables(:one)
  end

  test "visiting the index" do
    visit book_tables_url
    assert_selector "h1", text: "Book Tables"
  end

  test "creating a Book table" do
    visit book_tables_url
    click_on "New Book Table"

    fill_in "Published year", with: @book_table.Published_year
    fill_in "Book title", with: @book_table.book_title
    click_on "Create Book table"

    assert_text "Book table was successfully created"
    click_on "Back"
  end

  test "updating a Book table" do
    visit book_tables_url
    click_on "Edit", match: :first

    fill_in "Published year", with: @book_table.Published_year
    fill_in "Book title", with: @book_table.book_title
    click_on "Update Book table"

    assert_text "Book table was successfully updated"
    click_on "Back"
  end

  test "destroying a Book table" do
    visit book_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book table was successfully destroyed"
  end
end
