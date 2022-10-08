require "application_system_test_case"

class ConcesionariaTest < ApplicationSystemTestCase
  setup do
    @concesionarium = concesionaria(:one)
  end

  test "visiting the index" do
    visit concesionaria_url
    assert_selector "h1", text: "Concesionaria"
  end

  test "should create concesionarium" do
    visit concesionaria_url
    click_on "New concesionarium"

    fill_in "Direccion", with: @concesionarium.direccion
    fill_in "Nombre", with: @concesionarium.nombre
    fill_in "Telefono", with: @concesionarium.telefono
    click_on "Create Concesionarium"

    assert_text "Concesionarium was successfully created"
    click_on "Back"
  end

  test "should update Concesionarium" do
    visit concesionarium_url(@concesionarium)
    click_on "Edit this concesionarium", match: :first

    fill_in "Direccion", with: @concesionarium.direccion
    fill_in "Nombre", with: @concesionarium.nombre
    fill_in "Telefono", with: @concesionarium.telefono
    click_on "Update Concesionarium"

    assert_text "Concesionarium was successfully updated"
    click_on "Back"
  end

  test "should destroy Concesionarium" do
    visit concesionarium_url(@concesionarium)
    click_on "Destroy this concesionarium", match: :first

    assert_text "Concesionarium was successfully destroyed"
  end
end
