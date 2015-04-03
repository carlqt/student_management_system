class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
  end

  def new
    @mentor = Mentor.new
  end

  def update
    # @students = Student.all
    @mentor = Mentor.find params[:id]

    if @mentor.update_attributes(mentor_params)
      flash[:success] = "Mentor updated successfully"
      redirect_to :back
    else
      flash[:danger] = @mentor.errors.full_messages
      render :edit
    end
  end

  def destroy
    Mentor.destroy params[:id]
    redirect_to mentors_path
  end

  def create
    @mentor = Mentor.new mentor_params


    if @mentor.save
      flash[:success] = "Mentor created"
      redirect_to :back
    else
      flash[:danger] = @mentor.errors.full_messages
      render :new
    end
  end

  def edit
    @mentor = Mentor.find params[:id]
  end

  private
  def mentor_params
    params.require(:mentor).permit(:name, :date_of_birth, :sex, :bio, :image)
  end
end
