class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def logged_in?
    @current_user || User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    unless logged_in?
      flash[:danger] = 'Please log in.'
      redirect_to home_url
    end
  end

  helper_method :logged_in?
end
