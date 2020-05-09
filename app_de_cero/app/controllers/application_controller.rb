class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(MatchUser)
      match_home_path

    elsif resource_or_scope.is_a?(LocalUser)
      local_home_path
    else
      super
    end
  end

end
