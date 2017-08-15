require 'test_helper'

class FarmingStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farming_student = farming_students(:one)
  end

  test "should get index" do
    get farming_students_url
    assert_response :success
  end

  test "should get new" do
    get new_farming_student_url
    assert_response :success
  end

  test "should create farming_student" do
    assert_difference('FarmingStudent.count') do
      post farming_students_url, params: { farming_student: { farming_id: @farming_student.farming_id, user_id: @farming_student.user_id } }
    end

    assert_redirected_to farming_student_url(FarmingStudent.last)
  end

  test "should show farming_student" do
    get farming_student_url(@farming_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_farming_student_url(@farming_student)
    assert_response :success
  end

  test "should update farming_student" do
    patch farming_student_url(@farming_student), params: { farming_student: { farming_id: @farming_student.farming_id, user_id: @farming_student.user_id } }
    assert_redirected_to farming_student_url(@farming_student)
  end

  test "should destroy farming_student" do
    assert_difference('FarmingStudent.count', -1) do
      delete farming_student_url(@farming_student)
    end

    assert_redirected_to farming_students_url
  end
end
