module Api
  class PlacesController < ApiController

    def index
      # parameters = { term: params[:term], limit: 16 }
      # render json: Yelp.client.search('San Francisco', parameters)
      if params[:search].nil? || params[:search].empty?
        @places = Place.all
      else
        @places = Place.search(params[:search])
      end
        # order_by_geodist(:location, *Geocoder.coordinates(params[:loc]))
      # end


      render json: @places
    end

    def show
      if params[:id] == "0"
        @place = current_user
          .places
          .includes(menus: { categories: { menu_items: { comments: :user }}})
          .first
      else
        @place = Place
          .includes(menus: { categories: { menu_items: { comments: :user }}})
          .find(params[:id])
      end
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

    # def search
    #   parameters = { term: params[:term], limit: 16 }
    #   render json: Yelp.client.search('San Francisco', parameters)
    # end

    private

      def place_params
        params.require(:place).permit(:owner_id, :title, :street_address,
                                      :city, :state, :zipcode, :country, :term)
      end
  end
end
