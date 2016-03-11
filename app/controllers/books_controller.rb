class BooksController < ApplicationController
  def list
    @books = Book.all
  end

  def detail
    @book = Book.find_by id: params[:id]
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.title = params[:book][:title]
    @book.price = params[:book][:price]
    @book.photo_url = params[:book][:photo_url]

    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by id: params[:id]
  end

  def update
    @book = Book.find_by id: params[:id]

    @book.title = params[:book][:title]
    @book.price = params[:book][:price]
    @book.photo_url = params[:book][:photo_url]

      if @book.save
        redirect_to book_path(id: @book.id)
      else
        render :edit
      end
    end

  def delete
    @book = Book.find_by id: params[:id]
    @book.destroy
    redirect_to root_path
  end
end
