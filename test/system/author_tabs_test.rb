require "application_system_test_case"

class AuthorTabsTest < ApplicationSystemTestCase
  setup do
    @author_tab = author_tabs(:one)
  end

  test "visiting the index" do
    visit author_tabs_url
    assert_selector "h1", text: "Author Tabs"
  end

  test "creating a Author tab" do
    visit author_tabs_url
    click_on "New Author Tab"

    fill_in "Author name", with: @author_tab.author_name
    fill_in "Date of birth", with: @author_tab.date_of_birth
    click_on "Create Author tab"

    assert_text "Author tab was successfully created"
    click_on "Back"
  end

  test "updating a Author tab" do
    visit author_tabs_url
    click_on "Edit", match: :first

    fill_in "Author name", with: @author_tab.author_name
    fill_in "Date of birth", with: @author_tab.date_of_birth
    click_on "Update Author tab"

    assert_text "Author tab was successfully updated"
    click_on "Back"
  end

  test "destroying a Author tab" do
    visit author_tabs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Author tab was successfully destroyed"
  end
end
