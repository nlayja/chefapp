require 'test_helper'

class InvitadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invitado = invitados(:one)
  end

  test "should get index" do
    get invitados_url
    assert_response :success
  end

  test "should get new" do
    get new_invitado_url
    assert_response :success
  end

  test "should create invitado" do
    assert_difference('Invitado.count') do
      post invitados_url, params: { invitado: { chef_id: @invitado.chef_id, class: @invitado.class, email: @invitado.email, name: @invitado.name } }
    end

    assert_redirected_to invitado_url(Invitado.last)
  end

  test "should show invitado" do
    get invitado_url(@invitado)
    assert_response :success
  end

  test "should get edit" do
    get edit_invitado_url(@invitado)
    assert_response :success
  end

  test "should update invitado" do
    patch invitado_url(@invitado), params: { invitado: { chef_id: @invitado.chef_id, class: @invitado.class, email: @invitado.email, name: @invitado.name } }
    assert_redirected_to invitado_url(@invitado)
  end

  test "should destroy invitado" do
    assert_difference('Invitado.count', -1) do
      delete invitado_url(@invitado)
    end

    assert_redirected_to invitados_url
  end
end
