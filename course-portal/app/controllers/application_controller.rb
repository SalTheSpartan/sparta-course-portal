class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  private
    def verify_is_admin
      current_method = params[:action]
      current_controller = params[:controller]

      puts current_controller
      if !(current_method.match(/list|show/i)) || current_controller != "groups"
        puts "method is not list"
        (current_user.nil?) ? redirect_to(root_path) : (redirect_to '/groups/list' unless (current_user.admin?))
      end

    end
end
