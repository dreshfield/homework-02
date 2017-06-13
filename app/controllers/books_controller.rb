class BooksController < ApplicationController
  def index
    # Generate a collection of books for display in our books view
    @books = Book.all
  end
end
