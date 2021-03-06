module C4
  class ApplicationController < ActionController::Base
    
    protect_from_forgery with: :exception

    def after_sign_in_path_for(resource)
      c4.root_path
    end

    def after_sign_out_path_for(resource_or_scope)
      c4.new_user_session_path
    end

  end
end
