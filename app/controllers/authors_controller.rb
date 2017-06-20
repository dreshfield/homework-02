class AuthorsController < ApplicationController
  def index
    @authors = Author.all.order('last_name ASC')
  end

  def new
    @author = Author.new
  end

  def create
    @author = authors.create(author_params)
    redirect_to authors_path
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end


  def update
    @author = Author.find(params[:id])
    @author.update_attributes(author_params)
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :age)
  end
end