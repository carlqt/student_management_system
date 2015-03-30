class StudentsController < ApplicationController
  before_action :instantiate_variables, only: [:edit, :new]

  def index
    @students = Student.all
  end

  def edit
    @student = Student.find params[:id]
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new student_params

    if @student.save
      redirect_to :back
    else
      render new
    end

  end

  def update
    @student = Student.find params[:id]
    if @student.update_attributes(student_params)
      redirect_to students_path
    else
      render :edit
    end
  end

  def destroy
    Student.destroy params[:id]
    redirect_to :back
  end

  private

  def instantiate_variables
    @colleges = College.all
  end

  def student_params
    params.require(:student).permit(:name, :image, :date_of_birth, :sex, :school, :level, :country, :college_id, :sat_score)
  end
end
