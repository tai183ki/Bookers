class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(book.id), notice: 'Successufully'
    else
      render :new
    end
  end

  def edit
  end

  private
  
  def book_params
    params.permit(:title, :body)
  end
end
