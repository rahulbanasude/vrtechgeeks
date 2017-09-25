class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index]

  def index
@posts = Post.all
  end

    def show
@post = Post.find(params[:id])
    end
    def new
      @post = current_user.posts.build

    end

def create
  @post = Post.new(post_params)
  @post.user = current_user
  if @post.save
    redirect_to posts_path(@post)
  else
    render 'new'
  end
end

def edit
  @post = current_user.posts.find(params[:id])

end
def update
  @post = Post.find(params[:id])
if @post.update(params[:post].permit(:title, :body, :image))
  redirect_to @post, notice: 'Post was successfully updated.'
else
		render 'edit'
		render @post.errors
		end
end



def destroy
	@post = current_user.posts.find(params[:id])
	@post.destroy
	redirect_to root_path

end

  private



  def post_params
        params.require(:post).permit(:title, :body, :image, :user_id)
      end

end
