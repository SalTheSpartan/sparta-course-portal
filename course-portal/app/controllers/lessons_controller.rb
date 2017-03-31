class LessonsController < ApplicationController
  before_action :verify_is_admin

  def index
  end

  def show
  end

  def delete
  end

  def new
    @lesson = Lesson.new
  end

  def create

    title = lesson_params[:title]
    syllabus = Syllabus.find(lesson_params[:syllabus])
    notes = lesson_params[:notes]

    @lesson = Lesson.new({title: title, syllabus: syllabus, notes: notes})

    @lesson.save
    redirect_to syllabi_index_url
  end

  private
    def lesson_params
      params.require(:lesson).permit(:title, :syllabus, :notes,)
    end



end
