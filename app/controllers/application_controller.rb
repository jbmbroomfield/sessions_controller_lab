class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    p "hhhhhhhhhhhhhhhhhhhh"
    p session[:name]
    if !session[:name] || session[:name].length == 0
      redirect_to login_path
    end
  end
  
end