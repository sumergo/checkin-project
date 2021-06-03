class StudentsController < ApplicationController
  def index
    @Students = Student.all
  end

  def show
    @Student = Student.find(params[:id])
  end

  def edit
    @Student = Student.find(params[:id])
  end

  def update
    @Student = Student.find(params[:id])

    if @Student.update(student_params)
      redirect_to @Student
    else
      render :edit
    end
  end
  
  def destroy
    @Student = Student.find(params[:id])
    @Student.destroy

    redirect_to '/index'
  end

  def new
    @Student = Student.new
  end
  
  def create
    @Student = Student.new(student_params)
    @Student.check_in_time = params[:created_at]
    if @Student.save
      redirect_to '/index'
      
    else
      render :new
      
    end
  end

  private
  def student_params
    params.require(:student).permit(:first_name,:last_name,:graduation_date)
  end
end
