class AuthenticationsController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate

  def login
    authenticate params[:email], params[:password]
  end



  private

  def authenticate(email, password)
    command = AuthenticateUser.call(email, password)
    if command.success?
      render json: {
        access_token: command.result,
        message: 'Login Successful'
      }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  # private

  # def auth_params
  #   params.permit(:email, :password)
  # end
end
