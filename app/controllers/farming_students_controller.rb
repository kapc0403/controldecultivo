class FarmingStudentsController < ApplicationController
  before_action :set_farming_student, only: [:show, :edit, :update, :destroy]

  # GET /farming_students
  # GET /farming_students.json
  def index
    @farming_students = FarmingStudent.all
  end

  # GET /farming_students/1
  # GET /farming_students/1.json
  def show
  end

  # GET /farming_students/new
  def new
    @farming_student = FarmingStudent.new
  end

  # GET /farming_students/1/edit
  def edit
  end

  # POST /farming_students
  # POST /farming_students.json
  def create
    @farming_student = FarmingStudent.new(farming_student_params)

    respond_to do |format|
      if @farming_student.save
        format.html { redirect_to @farming_student, notice: 'Farming student was successfully created.' }
        format.json { render :show, status: :created, location: @farming_student }
      else
        format.html { render :new }
        format.json { render json: @farming_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farming_students/1
  # PATCH/PUT /farming_students/1.json
  def update
    respond_to do |format|
      if @farming_student.update(farming_student_params)
        format.html { redirect_to @farming_student, notice: 'Farming student was successfully updated.' }
        format.json { render :show, status: :ok, location: @farming_student }
      else
        format.html { render :edit }
        format.json { render json: @farming_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farming_students/1
  # DELETE /farming_students/1.json
  def destroy
    @farming_student.destroy
    respond_to do |format|
      format.html { redirect_to farming_students_url, notice: 'Farming student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farming_student
      @farming_student = FarmingStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farming_student_params
      params.require(:farming_student).permit(:user_id, :farming_id)
    end
end
