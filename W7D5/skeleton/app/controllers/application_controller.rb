class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user

  end

  def login(user)
    
  end

  def logout!

  end

  def logged_in?
  end

  def require_logged_in
    redirect_to
  end
end
