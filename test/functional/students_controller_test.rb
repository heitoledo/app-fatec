require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { data_conclusao_ano: @student.data_conclusao_ano, data_conclusao_sem: @student.data_conclusao_sem, data_entrada_ano: @student.data_entrada_ano, data_entrada_sem: @student.data_entrada_sem, fase_tcc: @student.fase_tcc, nome: @student.nome, orientador_tcc: @student.orientador_tcc, ra: @student.ra, telefone: @student.telefone, titulo_tcc: @student.titulo_tcc, turno: @student.turno }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    put :update, id: @student, student: { data_conclusao_ano: @student.data_conclusao_ano, data_conclusao_sem: @student.data_conclusao_sem, data_entrada_ano: @student.data_entrada_ano, data_entrada_sem: @student.data_entrada_sem, fase_tcc: @student.fase_tcc, nome: @student.nome, orientador_tcc: @student.orientador_tcc, ra: @student.ra, telefone: @student.telefone, titulo_tcc: @student.titulo_tcc, turno: @student.turno }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
