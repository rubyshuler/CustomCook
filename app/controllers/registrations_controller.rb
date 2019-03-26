class RegistrationsController < Devise::RegistrationsController
  before_action :set_registration, only: [:sign_up_params, :account_update_params]

  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :avatar)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :avatar)
  end
end
