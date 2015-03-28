class StudentsController < ApplicationController
  def index
  end

  def edit
  end

  def new
    @colleges = College.all
  end
end
