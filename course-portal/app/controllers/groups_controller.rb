class GroupsController < ApplicationController
  def index
    @group = Group.all
  end

  def new
    @group = Group.new
  end

  def create

    name = group_params[:name]
    start_date = group_params[:start_date]
    end_date = group_params[:end_date]
    size = group_params[:size]
    course = Course.find(group_params[:course])
    @group = Group.new({name: name, start_date: start_date, end_date: end_date, size: size, course: course})

    @group.save
    redirect_to "/groups"
  end

  def edit
    @group = Group.find(params[:id])
    @lessons = Lesson.all
    render 'groups/edit'
  end

  def update
    @group = Group.find(params[:id])
    render 'groups/edit'
  end
  private
    def group_params
      params.require(:group).permit(:name, :start_date, :end_date, :size, :course)
    end

end
