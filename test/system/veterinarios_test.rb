require "application_system_test_case"

class VeterinariosTest < ApplicationSystemTestCase
  setup do
    @veterinario = veterinarios(:one)
  end

  test "visiting the index" do
    visit veterinarios_url
    assert_selector "h1", text: "Veterinarios"
  end

  test "should create veterinario" do
    visit veterinarios_url
    click_on "New veterinario"

    fill_in "Nome", with: @veterinario.nome
    fill_in "Preco", with: @veterinario.preco
    click_on "Create Veterinario"

    assert_text "Veterinario was successfully created"
    click_on "Back"
  end

  test "should update Veterinario" do
    visit veterinario_url(@veterinario)
    click_on "Edit this veterinario", match: :first

    fill_in "Nome", with: @veterinario.nome
    fill_in "Preco", with: @veterinario.preco
    click_on "Update Veterinario"

    assert_text "Veterinario was successfully updated"
    click_on "Back"
  end

  test "should destroy Veterinario" do
    visit veterinario_url(@veterinario)
    click_on "Destroy this veterinario", match: :first

    assert_text "Veterinario was successfully destroyed"
  end
end
