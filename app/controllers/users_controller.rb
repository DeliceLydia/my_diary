class UsersController < ApplicationController
 skip_before_action :authorize_request, only: :create

  def create
    user = User.create!(user_params)
    token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, token: token }
    json_response(response, :created)
  end

  private

  def user_params
    params.permit(:firstname, :lastname, :email, :password)
  end
end
