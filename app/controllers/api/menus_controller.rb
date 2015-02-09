module Api
  class MenusController < ApiController

    def index
      @place = Place.find(current_user.places.first)
      @menus = @place.menus
      render json: @menus
    end

    def show
      @menu = Menu.includes(categories: {menu_items: :comments} )
                  .find(params[:id])
      render :show
    end

    def create
      @menu = Menu.new(menu_params)
      if @menu.save
        render json: @menu
      else
        render json: @menu.errors.full_messages,
        status: :unprocessable_entity
      end
    end

    def update
      @menu = Menu.find(params[:id])
      if @menu.update_attributes(menu_params)
        render json: @menu
      else
        render json: @menu.errors.full_messages,
        status: :unprocessable_entity
      end
    end

    def new
      @menu = Menu.new
      render :new
    end

    private

    def menu_params
      params.require(:menu).permit(:title, :place_id)
    end
  end
end
