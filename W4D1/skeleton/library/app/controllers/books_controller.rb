class BooksController < ApplicationController
  def index
    @books = Book.all
    # your code here
  end

  def new

    # your code here
  end

  def create
    Book.create!(title: book_params["title"], author: book_params["author"])
    redirect_to action: "index"
    # your code here
  end

  def destroy
    if book = Book.find_by(id: book_params["id"])
      book.destroy
      redirect_to action: "index"
    else
      fail
    end
    # your code here
  end

  private
  def book_params
    params[:book]||= {"id" => params["id"].to_i}
    params.require(:book).permit(:id, :title, :author)
  end
end
