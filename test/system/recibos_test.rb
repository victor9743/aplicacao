require "application_system_test_case"

class RecibosTest < ApplicationSystemTestCase
  setup do
    @recibo = recibos(:one)
  end

  test "visiting the index" do
    visit recibos_url
    assert_selector "h1", text: "Recibos"
  end

  test "creating a Recibo" do
    visit recibos_url
    click_on "New Recibo"

    fill_in "Descricao", with: @recibo.descricao
    fill_in "Image data", with: @recibo.image_data
    click_on "Create Recibo"

    assert_text "Recibo was successfully created"
    click_on "Back"
  end

  test "updating a Recibo" do
    visit recibos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @recibo.descricao
    fill_in "Image data", with: @recibo.image_data
    click_on "Update Recibo"

    assert_text "Recibo was successfully updated"
    click_on "Back"
  end

  test "destroying a Recibo" do
    visit recibos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recibo was successfully destroyed"
  end
end
