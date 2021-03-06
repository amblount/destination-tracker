class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
       if !session[:current_user]
           flash[:error] = "You need to be logged in"
           redirect_to "/login"
       end
   end

   def current_user
     if session[:current_user] != nil
       return User.find(session[:current_user]["id"])
     else
       false
     end
   end

  def require_login
    unless current_user
      #send an http response to stop program execution
      redirect_to root_path
    end
  end

  def owned_by?(user)
    return user == current_user
  end

  def owner_check(user)
    unless owned_by?(user)
      redirect_to root_path
    end
  end

   helper_method :current_user
   helper_method :owned_by?
end
