module Api
  class RatingsController < ApiController
    before_action :verify_logged_in

    def create
      @rating = Rating.new(rating_params)
      @rating.rater = current_user

      unless has_been_rated?
        if @rating.save
          render :show
        else
          render json: @rating.errors.full_messages,
          status: :unprocessable_entity
        end
      else
        render json: { error: "rated" }, status: 401
      end
    end

  private

    def has_been_rated?
      !!Rating.where(menu_item_id: params[:menu_item_id])
              .find_by_rater_id(current_user.id)
    end

    def rating_params
      params.require(:rating).permit(:menu_item_id, :score)
    end
  end
end
