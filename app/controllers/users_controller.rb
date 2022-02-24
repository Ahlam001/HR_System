class UsersController < Devise::RegistrationsController
  
    def create
        super
        if @user.persisted?
          # UserMailer.welcome_email(@user).deliver
          UserMailer.with(user: @user).welcome_email.deliver_later
        end
      end
      def show
        @user = User.find(params[:id])
        end
        def index
           @users = User.all 
          end
      private
      def sign_up_params
        params.require(:user).permit(:email, :password, :password_confirmation, :cover)
      end
end
