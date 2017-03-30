class SyllabiController < ApplicationController
  before_action :verify_is_admin

  def index
    @syllabi = Syllabus.all
    @syllabus = Syllabus.new

  end

  def show
  end

  def delete
  end

  def new
  end

  def create
    @syllabus = Syllabus.new(syllabus_params)
    @syllabus.save
    redirect_to "/syllabi"
  end

  def edit
  end

  def update
  end

  def syllabus_params
    params.require(:syllabus).permit(:title, :duration)
  end

end
