class AuthorsController < ApplicationController
  def show
    flash[:message] = 'Author Created!'
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      flash[:message]
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
