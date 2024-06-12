require "application_system_test_case"

class SaidasTest < ApplicationSystemTestCase
  setup do
    @saida = saidas(:one)
  end

  test "visiting the index" do
    visit saidas_url
    assert_selector "h1", text: "Saidas"
  end

  test "should create saida" do
    visit saidas_url
    click_on "New saida"

    fill_in "Descricao", with: @saida.descricao
    fill_in "Status", with: @saida.status
    fill_in "User", with: @saida.user_id
    fill_in "Valorplanejado", with: @saida.valorPlanejado
    fill_in "Valortaxa", with: @saida.valorTaxa
    fill_in "Valortotal", with: @saida.valorTotal
    fill_in "Vencimento", with: @saida.vencimento
    click_on "Create Saida"

    assert_text "Saida was successfully created"
    click_on "Back"
  end

  test "should update Saida" do
    visit saida_url(@saida)
    click_on "Edit this saida", match: :first

    fill_in "Descricao", with: @saida.descricao
    fill_in "Status", with: @saida.status
    fill_in "User", with: @saida.user_id
    fill_in "Valorplanejado", with: @saida.valorPlanejado
    fill_in "Valortaxa", with: @saida.valorTaxa
    fill_in "Valortotal", with: @saida.valorTotal
    fill_in "Vencimento", with: @saida.vencimento.to_s
    click_on "Update Saida"

    assert_text "Saida was successfully updated"
    click_on "Back"
  end

  test "should destroy Saida" do
    visit saida_url(@saida)
    click_on "Destroy this saida", match: :first

    assert_text "Saida was successfully destroyed"
  end
end
