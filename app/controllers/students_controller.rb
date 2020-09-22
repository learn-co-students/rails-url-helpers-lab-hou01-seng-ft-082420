class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student

  end
  
  def activate
    set_student
    @student.activate
    redirect_to show
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end