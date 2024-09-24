module Api
  module V1
    class WelcomeController < ApplicationController
      def index
        render json: { message: 'Welcome to the Dairy App!' }
      end
    end
  end
end
