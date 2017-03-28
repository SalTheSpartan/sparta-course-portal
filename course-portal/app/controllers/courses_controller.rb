class CoursesController < ApplicationController
  def index
    @course = Course.all
  end

  def create
    @course = Course.new(course_params)

    @course.save
    redirect_to "/"

  end

  def new
    @course = Course.new
  end

  private
    def course_params
      params.require(:course).permit(:name, :duration)
    end
end
