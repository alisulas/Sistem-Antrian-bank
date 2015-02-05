module Api
  class RatingsController < ApplicationController
    def create
      @rating = Place.new(place_params)
      if @rating.save
        render :show
      else
        render json: @rating.errors.full_messages,
        status: :unprocessable_entity
      end
    end
  end
end
