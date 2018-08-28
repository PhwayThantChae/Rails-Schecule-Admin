class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        if resource.class == User
          User.renew_authentication_token(current_user)
          root_path
        end
      end
end
