class StudentsController < ApplicationController
  def index
  end

  def edit
  end

  def new
    @colleges = College.pluck(:name)
  end
end
