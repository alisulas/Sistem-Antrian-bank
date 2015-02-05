module Api
  class MenuItemsController < ApiController

    def show
      @menu_item = MenuItem.find(params[:id])

      render :show
    end

  end
end
