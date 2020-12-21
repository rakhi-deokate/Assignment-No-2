require "application_system_test_case"

class AuthorTable1sTest < ApplicationSystemTestCase
  setup do
    @author_table1 = author_table1s(:one)
  end

  test "visiting the index" do
    visit author_table1s_url
    assert_selector "h1", text: "Author Table1s"
  end

  test "creating a Author table1" do
    visit author_table1s_url
    click_on "New Author Table1"

    fill_in "Author name", with: @author_table1.author_name
    fill_in "Date of birth", with: @author_table1.date_of_birth
    click_on "Create Author table1"

    assert_text "Author table1 was successfully created"
    click_on "Back"
  end

  test "updating a Author table1" do
    visit author_table1s_url
    click_on "Edit", match: :first

    fill_in "Author name", with: @author_table1.author_name
    fill_in "Date of birth", with: @author_table1.date_of_birth
    click_on "Update Author table1"

    assert_text "Author table1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Author table1" do
    visit author_table1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Author table1 was successfully destroyed"
  end
end
