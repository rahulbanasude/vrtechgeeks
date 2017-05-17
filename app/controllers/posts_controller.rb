class PostsController < ApplicationController
 before_action :set_post, only: [:show]
  before_action :authenticate_admin_user!, except: [:show, :index]

  def index
@posts = Post.all
  end

    def show

    end

  private

  def set_post
    @post = Post.find(params[:id])

  end

  def post_params
        params.require(:post).permit(:title, :body, :image)
      end

end
