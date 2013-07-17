class ApplicationController < ActionController::Base
  protect_from_forgery
  # helper_method :current_user
  before_filter :current_user

  private
  def current_user
    @current_user ||= Student.find(session[:student_id]) if session[:student_id]
  end
end
