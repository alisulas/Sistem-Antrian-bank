module Api
  class ApiController < ApplicationController

    def verify_logged_in
      unless current_user && !current_user.provider
        render json: { error: 'login' }, status: 401
      end
    end
  end
end
