# frozen_string_literal: true

class Localusers::SessionsController < Devise::SessionsController
   prepend_before_action :set_variables, only: [:new]
  # GET /resource/sign_in
  def set_variables
    @logo = {
      :name => "Grupo43App",
      :link => root_path
    }
    @style = "home"
  end

  def new
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
