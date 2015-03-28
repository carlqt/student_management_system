class StudentsController < ApplicationController
  def index
  end

  def edit
  end

  def new
    @colleges = College.all
    @student = Student.new
  end

  def create
    binding.pry
    student = Student.new student_params

  end

  private

  def student_params
    params.require(:student).permit(:name, :date_of_birth, :sex, :school, :level, :country)
  end
end
