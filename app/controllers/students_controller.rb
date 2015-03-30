class StudentsController < ApplicationController
  def index
  end

  def edit
    @student = Student.find id: params[:id]
  end

  def new
    @colleges = College.all
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

  private

  def student_params
    params.require(:student).permit(:name, :date_of_birth, :sex, :school, :level, :country, :college_id, :sat_score)
  end
end
