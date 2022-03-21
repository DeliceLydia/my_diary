class UsersController < ApplicationController
 
  def create
    user = User.create!(user_params)
    response = { message: Message.account_created }
    json_response(response, :created)
  end

  private

  def user_params
    params.permit(:firstname, :lastname, :email, :password)
  end
end
