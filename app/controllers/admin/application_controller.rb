# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class Admin::ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  protected
    # check login
    def authorize
      unless User.find_by_id(session[:user_id])
        session[:original_uri] = request.request_uri
        flash[:notice] = "Please login"
        redirect_to :controller => 'admin', :action => 'login'
      end
    end
end
