class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @u = User.find_by_id(session[:user_id]) if session[:user_id]
    if @u.nil?
      redirect_to '/users/welcome'
    else
      return @u
    end
  end

  helper_method :current_user

end
