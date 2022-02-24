class UsersController < Devise::RegistrationsController
  
    def create
        super
        if @user.persisted?
          # UserMailer.welcome_email(@user).deliver
          UserMailer.with(user: @user).welcome_email.deliver_later
        end
      end
end
