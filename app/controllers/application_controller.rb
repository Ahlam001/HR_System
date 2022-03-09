
    class ApplicationController < ActionController::Base
        around_action :switch_locale

        def switch_locale(&action)
          locale = params[:locale] || I18n.default_locale
          I18n.with_locale(locale, &action)
        end
    #     before_action :configure_permitted_parameters, if: :devise_controller?
    
    #     protected
    
    #     def configure_permitted_parameters
    #         devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :cover) }
    #     end
    # 
end
