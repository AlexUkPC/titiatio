require "application_system_test_case"

class TitiataTest < ApplicationSystemTestCase
  setup do
    @titiatum = titiata(:one)
  end

  test "visiting the index" do
    visit titiata_url
    assert_selector "h1", text: "Titiata"
  end

  test "creating a Titiatum" do
    visit titiata_url
    click_on "New Titiatum"

    fill_in "Titiatum", with: @titiatum.titiatum
    click_on "Create Titiatum"

    assert_text "Titiatum was successfully created"
    click_on "Back"
  end

  test "updating a Titiatum" do
    visit titiata_url
    click_on "Edit", match: :first

    fill_in "Titiatum", with: @titiatum.titiatum
    click_on "Update Titiatum"

    assert_text "Titiatum was successfully updated"
    click_on "Back"
  end

  test "destroying a Titiatum" do
    visit titiata_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Titiatum was successfully destroyed"
  end
end
