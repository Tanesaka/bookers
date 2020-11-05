class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    #下記のリンクもas: bookってやったやつ
    redirect_to book_path(book.id)
  end

  def index
    @books = Book.all
  end


  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book_params)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to index_book_path
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
