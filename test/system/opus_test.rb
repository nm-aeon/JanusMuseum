require "application_system_test_case"

class OpusTest < ApplicationSystemTestCase
  setup do
    @opu = opus(:one)
  end

  test "visiting the index" do
    visit opus_url
    assert_selector "h1", text: "Opus"
  end

  test "creating a Opu" do
    visit opus_url
    click_on "New Opu"

    fill_in "Designer", with: @opu.designer
    fill_in "Image url", with: @opu.image_url
    fill_in "Title", with: @opu.title
    fill_in "Year", with: @opu.year
    click_on "Create Opu"

    assert_text "Opu was successfully created"
    click_on "Back"
  end

  test "updating a Opu" do
    visit opus_url
    click_on "Edit", match: :first

    fill_in "Designer", with: @opu.designer
    fill_in "Image url", with: @opu.image_url
    fill_in "Title", with: @opu.title
    fill_in "Year", with: @opu.year
    click_on "Update Opu"

    assert_text "Opu was successfully updated"
    click_on "Back"
  end

  test "destroying a Opu" do
    visit opus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Opu was successfully destroyed"
  end
end
