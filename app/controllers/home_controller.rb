class HomeController < ApplicationController

  def index
    if current_user == nil
      @courses = Course.all
    elsif current_user.tutor?
      redirect_to courses_path
    else
      @courses = Course.all
    end
  end
end
