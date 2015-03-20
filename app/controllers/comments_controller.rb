class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new()
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create(comment_params)
    if @comment.save
      @post.comments << @comment
      flash[:notice] = "Comment Posted Successfully"
      redirect_to post_path(@post)
    else
      flash[:alert] = "There was a problem. Please fix mistakes or contact support"
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:post_id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      @post.comments << @comment
      flash[:notice] = "Comment Posted Successfully"
      redirect_to post_path(@post)
    else
      flash[:alert] = "There was a problem. Please fix mistakes or contact support"
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @comment = Comment.find(params[:post_id])
    flash[:notice] = "#{@post.title} successfully deleted."
    @comment.destroy
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
