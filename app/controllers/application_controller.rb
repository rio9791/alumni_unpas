class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    unless resource.has_role? :admin
      if resource.has_role? :alumni
        root_path
      else
        accounts_dashboard_index_path
      end
    else
      admin_dashboard_index_path
    end
  end

end
