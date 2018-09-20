class UsersController < ApplicationController
  # Commenting this out so that no one else can sign up as a user on my blog!
  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(allowed_params)

  #   if @user.save
  #     redirect_to home_path, notice: 'Thank you for signing up!'
  #   else
  #     render :new
  #   end
  # end

  private

  def allowed_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
