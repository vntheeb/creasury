require "application_system_test_case"

class InvocesTest < ApplicationSystemTestCase
  setup do
    @invoce = invoces(:one)
  end

  test "visiting the index" do
    visit invoces_url
    assert_selector "h1", text: "Invoces"
  end

  test "creating a Invoce" do
    visit invoces_url
    click_on "New Invoce"

    fill_in "Name", with: @invoce.name
    fill_in "Value", with: @invoce.value
    click_on "Create Invoce"

    assert_text "Invoce was successfully created"
    click_on "Back"
  end

  test "updating a Invoce" do
    visit invoces_url
    click_on "Edit", match: :first

    fill_in "Name", with: @invoce.name
    fill_in "Value", with: @invoce.value
    click_on "Update Invoce"

    assert_text "Invoce was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoce" do
    visit invoces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoce was successfully destroyed"
  end
end
