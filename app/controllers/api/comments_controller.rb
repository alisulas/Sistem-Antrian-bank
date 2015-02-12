module Api
  class CommentsController < ApiController
    before_action :verify_logged_in

    def create
      @comment = Comment.new(comment_params)
      @comment.user = current_user
      #
      # unless has_been_rated?
      #   if @comment.save
      #     render :show
      #   else
      #     render json: @comment.errors.full_messages,
      #     status: :unprocessable_entity
      #   end
      # else
      #   render json: { error: "rated" }, status: 401
      # end
      if @comment.save
        render :show
      else
        render json: @comment.errors.full_messages, status: :unprocessable_entity
      end
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy

      render json: nil
    end

    private

    # def has_been_rated?
    #   !!Rating.where(menu_item_id: params[:menu_item_id])
    #   .find_by_rater_id(current_user.id)
    # end

    def comment_params
      params.require(:comment).permit(:menu_item_id, :user, :body)
    end
  end
end
