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
      @student = Student.new(students_params)

      if @student.valid?
          @student.save
          redirect_to student_path(@student)
      else
        flash[:errors] = @student.errors.full_messages
        redirect_to new_student_path
      end
    end
  
    def edit
      @student = Student.find(params[:id])
      @instructors = Instructor.all
    end
  
    def update
      @student = Student.find(params[:id])
      @student.name = students_params[:name]
      @student.major = students_params[:major]
      @student.age = students_params[:age]
      # @student.update(students_params)
      # redirect_to @student #student_path(@student)

      if @student.valid?
          @student.update(students_params)
          redirect_to student_path(@student)
      else
        flash[:errors] = @student.errors.full_messages
        redirect_to edit_student_path
      end
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
