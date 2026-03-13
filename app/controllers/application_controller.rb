class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  #sometimes you want to conveniently set a custom flash type when redirecting. For example, suppose you wanted to set a :danger
  #The ApplicationController is the base (parent) class that all other controllers inherit from (subclass), so anything you put in here applies to all controllers.
  add_flash_types(:danger)


  #“If @current_user is already set, keep it.
  #If it’s nil/empty, then fetch the user from the session and store it.”
  #So Rails doesn’t keep hitting the database over and over

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    helper_method :current_user
    helper_method :current_user?

    def current_user_admin?
      current_user && current_user.admin?
    end

    helper_method :current_user_admin?

    def require_signin
        unless current_user
            session[:intended_url] = request.url
            redirect_to new_session_url, alert: "Please sign in first!"
        end
    end

    def require_admin
        unless current_user_admin?
            redirect_to root_url, alert: "Unauthorized access!"
        end
      end

    def current_user?(user)
      current_user == user
    end


end
