module Api
  class PlacesController < ApiController

    def index
      @places = Place.all
      # parameters = { term: params[:term], limit: 16 }
      # render json: Yelp.client.search('San Francisco', parameters)

      @search = Place.search do
        fulltext params[:search]
      end
      # debugger
      render json: @search.results


      # render json: @places
    end

    def show
      @place = Place.includes(menus: {categories: {menu_items: :comments} })
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

    # def search
    #   parameters = { term: params[:term], limit: 16 }
    #   render json: Yelp.client.search('San Francisco', parameters)
    # end
    def search
      @search = Place.search(include: [:title, :street_address]) do
        keywords(params[:q])
      end
      # fail
      render :search
    end

    private

      def place_params
        params.require(:place).permit(:owner_id, :title, :street_address,
                                      :city, :state, :zipcode, :country, :term)
      end
  end
end
