class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def set_current_user(user)
    session[:user_token] = user.id * 3 if session
  end

  def current_user
    @current_user ||= User.find(session[:user_token] / 3) if session[:user_token]
  end

  private

  def authenticate_user
    if !session || !current_user
      redirect_to(login_path, alert: 'Please sign in first') and return
    end
  end
end
