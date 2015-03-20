class PostsController < ApplicationController

  def index
    @posts = Post.all()
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Successfully posted your post '#{@post.title}'."
      redirect_to posts_path
    else
      flash[:alert] = "There was a problem, post not saved. Please fix or contact suport."
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  def update
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Successfully updated #{@post.title}."
      redirect_to posts_path
    else
      flash[:alert] = "There was a problem, post not updated. Please fix or contact suport."
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    flash[:notice] = "#{@post.title} successfully deleted."
    @post.destroy
    redirect_to posts_path
  end


  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
