class InstructorsController < ApplicationController
  
  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
    @students = @instructor.students
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.create(instructors_params)
    redirect_to @instructor
  end

  def edit
    @instructor = Instructor.find(params[:id])
    @students = Student.all
  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructors_params)
    redirect_to @instructor #instructor_path(@instructor)
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
    redirect_to instructors_path
  end


private

  def instructors_params
    params.require(:instructor).permit(:name)
  end

  def current_instructor
    @instructor = Instructor.find(params[:id])
  end

end
