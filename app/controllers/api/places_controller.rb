module Api
  class PlacesController < ApiController

    def index
      @places = Place.all
      render json: @places
    end

    def show
      @place = Place.includes(menus: {categories: :menu_items})
                    .find(params[:id])
      render :show
    end

    def create
      @place = Place.new(place_params)
        if @place.save
          render json: @place
        else
          render json: @place.errors.full_messages,
                       status: :unprocessable_entity
        end
    end

    def update
      @place = Place.find(params[:id])
        if @place.update_attributes(place_params)
          render json: @place
        else
          render json: @place.errors.full_messages,
                       status: :unprocessable_entity
        end
    end

    def new
      @place = Place.new
      render :new
    end

    private

      def place_params
        params.require(:place).permit(:owner_id, :title, :street_address,
                                      :city, :state, :zipcode, :country)
      end
  end
end
