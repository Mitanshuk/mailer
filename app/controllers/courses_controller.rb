class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
    render json: @courses, each_serializer: CourseSerializer
    # render json: @courses
  end

  def show
    # if @course
    #   render json: @course
    # else
    #   render json: { message: 'Unable to find Course with this ID' }, status: 400
    # end
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to courses_path, notice: 'Course was successfully created.'
      render json: @course
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      render json: @courses
      redirect_to courses_path, notice: 'Course was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    # byebug
    @course = Course.find(params[:id])
    # @course.delete
    # @course.user_id = nil
    # @course.update(:user_id, nil)
    @course.update_attribute(:user_id, nil)

    # render json: @courses
    redirect_to courses_path, notice: 'Course was successfully destroyed.'
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :description, :user_id, :price, :video, :image, :pdf)
  end
end
