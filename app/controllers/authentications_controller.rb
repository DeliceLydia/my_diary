class AuthenticationsController < ApplicationController
  skip_before_action :authorize_request, only: :create

  def create
    user = User.find_by(email: params[:email])
    token =
      AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    render json: { email: user.email, authToken: token }
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end
