class StudentsController < ApplicationController

    def index
      @students = Student.all
      # render 'dragons/index.html.erb'
    end
  
    def show
      @student = Student.find(params[:id])
      @instructor = @student.instructor
    end
  
    def new
      @student = Student.new
      @instructors = Instructor.all
    end
  
    def create
      @student = Student.create(students_params)
      redirect_to @student
    end
  
    def edit
      @student = Student.find(params[:id])
      @instructors = Instructor.all
    end
  
    def update
      @student = Student.find(params[:id])
      # @student.update(students_params)
      redirect_to @student #student_path(@student)
    end
  
    def destroy
      @student = Student.find(params[:id])
      @student.destroy
      redirect_to students_path #'/students'
    end
  
    private
    def students_params
      params.require(:student).permit(:name, :major, :age, :instructor_id)
    end
  
    def current_student
      @student = Student.find(params[:id])
    end

end
