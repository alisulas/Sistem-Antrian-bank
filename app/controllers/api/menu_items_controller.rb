module Api
  class MenuItemsController < ApiController

    def show
      @menu_item = MenuItem.find(params[:id])

      render :show
    end

    def create
      @menu_item = MenuItem.new(menu_item_params)
      if @menu_item.save
        render json: @menu_item
      else
        render json: @menu_item.errors.full_messages,
        status: :unprocessable_entity
      end
    end

    def update
      @menu_item = MenuItem.find(params[:id])
      if @menu_item.update_attributes(menu_item_params)
        render json: @menu_item
      else
        render json: @menu_item.errors.full_messages,
        status: :unprocessable_entity
      end
    end

    def destroy
      @menu_item = MenuItem.find(params[:id])
      @menu_item.destroy()

      render json: nil
    end

    private

      def menu_item_params
        params.require(:menu_item).permit(:title, :description, :category_id)
      end

  end
end
