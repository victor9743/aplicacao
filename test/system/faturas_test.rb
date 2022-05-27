require "application_system_test_case"

class FaturasTest < ApplicationSystemTestCase
  setup do
    @fatura = faturas(:one)
  end

  test "visiting the index" do
    visit faturas_url
    assert_selector "h1", text: "Faturas"
  end

  test "creating a Fatura" do
    visit faturas_url
    click_on "New Fatura"

    fill_in "Descricao", with: @fatura.descricao
    fill_in "Image data", with: @fatura.image_data
    click_on "Create Fatura"

    assert_text "Fatura was successfully created"
    click_on "Back"
  end

  test "updating a Fatura" do
    visit faturas_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @fatura.descricao
    fill_in "Image data", with: @fatura.image_data
    click_on "Update Fatura"

    assert_text "Fatura was successfully updated"
    click_on "Back"
  end

  test "destroying a Fatura" do
    visit faturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fatura was successfully destroyed"
  end
end
