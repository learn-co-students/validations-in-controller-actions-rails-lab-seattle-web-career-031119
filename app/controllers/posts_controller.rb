class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    #@post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to @post
    else
      @errors = @post.errors.full_messages
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
