require "application_system_test_case"

class CompromissosTest < ApplicationSystemTestCase
  setup do
    @compromisso = compromissos(:one)
  end

  test "visiting the index" do
    visit compromissos_url
    assert_selector "h1", text: "Compromissos"
  end

  test "should create compromisso" do
    visit compromissos_url
    click_on "New compromisso"

    fill_in "Data", with: @compromisso.data
    fill_in "Descricao", with: @compromisso.descricao
    fill_in "Horario", with: @compromisso.horario
    fill_in "Titulo", with: @compromisso.titulo
    click_on "Create Compromisso"

    assert_text "Compromisso was successfully created"
    click_on "Back"
  end

  test "should update Compromisso" do
    visit compromisso_url(@compromisso)
    click_on "Edit this compromisso", match: :first

    fill_in "Data", with: @compromisso.data
    fill_in "Descricao", with: @compromisso.descricao
    fill_in "Horario", with: @compromisso.horario.to_s
    fill_in "Titulo", with: @compromisso.titulo
    click_on "Update Compromisso"

    assert_text "Compromisso was successfully updated"
    click_on "Back"
  end

  test "should destroy Compromisso" do
    visit compromisso_url(@compromisso)
    click_on "Destroy this compromisso", match: :first

    assert_text "Compromisso was successfully destroyed"
  end
end
