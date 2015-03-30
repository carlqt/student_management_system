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
  end

  def destroy
  end

  private

  def instantiate_variables
    @colleges = College.all
  end

  def student_params
    params.require(:student).permit(:name, :date_of_birth, :sex, :school, :level, :country, :college_id, :sat_score)
  end
end
