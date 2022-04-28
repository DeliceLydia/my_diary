class AuthenticationsController < ApplicationController
  skip_before_action :authorize_request, only: :create

  def create
    token = AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    json_response(token: token)
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end
