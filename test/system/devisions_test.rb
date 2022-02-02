require "application_system_test_case"

class DevisionsTest < ApplicationSystemTestCase
  setup do
    @devision = devisions(:one)
  end

  test "visiting the index" do
    visit devisions_url
    assert_selector "h1", text: "Devisions"
  end

  test "should create devision" do
    visit devisions_url
    click_on "New devision"

    fill_in "Description", with: @devision.description
    fill_in "Manager", with: @devision.manager
    fill_in "Name", with: @devision.name
    fill_in "Teams", with: @devision.teams
    click_on "Create Devision"

    assert_text "Devision was successfully created"
    click_on "Back"
  end

  test "should update Devision" do
    visit devision_url(@devision)
    click_on "Edit this devision", match: :first

    fill_in "Description", with: @devision.description
    fill_in "Manager", with: @devision.manager
    fill_in "Name", with: @devision.name
    fill_in "Teams", with: @devision.teams
    click_on "Update Devision"

    assert_text "Devision was successfully updated"
    click_on "Back"
  end

  test "should destroy Devision" do
    visit devision_url(@devision)
    click_on "Destroy this devision", match: :first

    assert_text "Devision was successfully destroyed"
  end
end
