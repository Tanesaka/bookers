class BooksController < ApplicationController

  def create
    book = Book.new(book_params)
    book.save
    #下記のリンクもas: bookってやったやつ
    redirect_to book_path(book.id), notice:'Book was successfully created.'
  end

  def index
    @books = Book.all
    @book = Book.new
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
    redirect_to book_path(book_params), notice:'Book was successfully updated.'
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to index_book_path, notice:'Book was successfully destroyed.'
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
