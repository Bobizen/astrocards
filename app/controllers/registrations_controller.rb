class RegistrationsController < ApplicationController

  def edit

  end

  def update
    if current_user.update(resource_params)
      redirect_to my_profile_path, notice: "Your profile was successfully updated."
    else
      render :edit
    end
  end

  private

  def resource_params
    params.require(:user).permit(:email, :nickname, :birthdate, :password, :password_confirmation, :current_password, :avatar)
  end
end
