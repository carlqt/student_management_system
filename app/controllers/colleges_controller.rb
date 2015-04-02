class CollegesController < ApplicationController
  def index
    @colleges = College.all

    respond_to do |format|
      format.html
      format.json { render json: @colleges }
    end
  end

  def new
    @college = College.new
  end

  def create
    @college = College.new college_params

    if @college.save
      redirect_to :back
    else
      flash.now[:danger] = @college.errors.full_messages
      render :new
    end
  end

  def update
    @college = College.find params[:id]

    if @college.update_attributes(college_params)
      redirect_to colleges_path
    else
      flash.now[:danger] = @college.errors.full_messages
      render :edit
    end
  end

  def edit
    @college = College.find params[:id]
  end

  def destroy
    College.destroy params[:id]
    redirect_to :back
  end

  def search

  end

  private

  def college_params
    params.require(:college).permit(:name, :sat_min_score, :image, :sat_max_score, :tuition, :country)
  end
end
