module Api
  class CategoriesController < ApiController

    def show
      @category = Category.includes(categories: {menu_items: :comments} )
      .find(params[:id])
      render :show
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        render json: @category
      else
        render json: @category.errors.full_messages,
        status: :unprocessable_entity
      end
    end

    def update
      @category = Category.find(params[:id])
      if @category.update_attributes(category_params)
        render json: @category
      else
        render json: @category.errors.full_messages,
        status: :unprocessable_entity
      end
    end

    def destroy
      @category = Category.find(params[:id])
      @category.destroy

      render json: nil
    end

    def new
      @category = Category.new
      render :new
    end

    private

    def category_params
      params.require(:category).permit(:title, :menu_id)
    end
  end
end
