class DashboardController < ApplicationController
  def index
    @course = Course.all
  end

  def example_new
    new_course = Course.new
    new_course.name = 'Some Class'
    new_course.number = 1
    new_course.save
    redirect_to '/dashboard'
  end

  def delete_course
    course_to_delete = Course.find(params[:id])
    course_to_delete.destroy
    redirect_to '/dashboard'
  end
end
