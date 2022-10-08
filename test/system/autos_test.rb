require "application_system_test_case"

class AutosTest < ApplicationSystemTestCase
  setup do
    @auto = autos(:one)
  end

  test "visiting the index" do
    visit autos_url
    assert_selector "h1", text: "Autos"
  end

  test "should create auto" do
    visit autos_url
    click_on "New auto"

    fill_in "Año", with: @auto.año
    fill_in "Estado", with: @auto.estado
    fill_in "Marca", with: @auto.marca
    fill_in "Modelo", with: @auto.modelo
    fill_in "Precio", with: @auto.precio
    fill_in "Tipo", with: @auto.tipo
    click_on "Create Auto"

    assert_text "Auto was successfully created"
    click_on "Back"
  end

  test "should update Auto" do
    visit auto_url(@auto)
    click_on "Edit this auto", match: :first

    fill_in "Año", with: @auto.año
    fill_in "Estado", with: @auto.estado
    fill_in "Marca", with: @auto.marca
    fill_in "Modelo", with: @auto.modelo
    fill_in "Precio", with: @auto.precio
    fill_in "Tipo", with: @auto.tipo
    click_on "Update Auto"

    assert_text "Auto was successfully updated"
    click_on "Back"
  end

  test "should destroy Auto" do
    visit auto_url(@auto)
    click_on "Destroy this auto", match: :first

    assert_text "Auto was successfully destroyed"
  end
end
