class CoursesController < ApplicationController
  before_action :verify_is_admin

  def index
    @courses = Course.all
    @course = Course.new

    # if !(current_user.admin?)
    #   redirect_to '/groups/list'
    # end
  end

  def create
    @course = Course.new(course_params)

    @course.save
    redirect_to "/"

  end

  def new
    @course = Course.new
  end

  def destroy
    Course.destroy params[:id]
    redirect_to root_path
  end


  private
    def course_params
      params.require(:course).permit(:name, :duration)
    end
end
