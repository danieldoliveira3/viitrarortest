require 'test_helper'

class CarrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carro = carros(:one)
  end

  test "should get index" do
    get carros_url, as: :json
    assert_response :success
  end

  test "should create carro" do
    assert_difference('Carro.count') do
      post carros_url, params: { carro: { marca_id: @carro.marca_id, modelo: @carro.modelo, nome: @carro.nome, preco: @carro.preco, user_id: @carro.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show carro" do
    get carro_url(@carro), as: :json
    assert_response :success
  end

  test "should update carro" do
    patch carro_url(@carro), params: { carro: { marca_id: @carro.marca_id, modelo: @carro.modelo, nome: @carro.nome, preco: @carro.preco, user_id: @carro.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy carro" do
    assert_difference('Carro.count', -1) do
      delete carro_url(@carro), as: :json
    end

    assert_response 204
  end
end
