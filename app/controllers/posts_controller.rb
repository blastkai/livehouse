class PostsController < ApplicationController
  
  def index
    @posts = Post.includes(:user).order('id DESC').page params[:page]

  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to :action => :index
  end
  
  def show
    @post = Post.find(params[:id])
    @blogcomment = Blogcomment.new
    @pastcomment = Blogcomment.includes(:user).where( post_id: params[:id])

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to :action => :show, :id => @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to :action => :index
  end
  ####
  private

  def post_params
    params.require(:post).permit(:title , :content, :id)
  end
end
