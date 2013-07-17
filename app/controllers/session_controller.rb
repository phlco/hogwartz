class SessionController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    password = params[:password]
    # authenticate a student
    student = Student.authenticate(params[:name], params[:password])
    if student
      session[:student_id] = student.id
      redirect_to student
    else
      flash.now.alert = "Invalid name or password"
      render 'new'
    end
  end
end