module Api
  class ApiController < ApplicationController

    def verify_logged_in
      unless current_user
        render json: { error: 'Must be logged in' }, status: 401
      end
    end
  end
end
