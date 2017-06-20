class BooksController < ApplicationController
  def index
    @books = Book.all.order('title ASC')
    # TODO: Add author search on books index (once author names on book index are reimplemented)
    # TODO: Handle nil query case so we display books in alphabetical order
    # FIXME: Searching "consider" returns our error message instead of "Consider Phlebas" and "Consider the Lilies"
    if params[:query]
      @books = Book.search(params[:query])
    else
      @books = Book.all.order('title ASC')
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :genre, :classification, :btype, :year)
  end
end