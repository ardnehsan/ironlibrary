class AuthorsController < ApplicationController
  def list
    @authors = Author.all.order("first_name asc")
  end

  def detail
    @author = Author.find_by id: params[:id]
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find_by id: params[:id]
  end

  def create
    @author = Author.new
    @author.first_name = params[:author][:first_name]
    @author.last_name = params[:author][:last_name]
    @author.bio = params[:author][:bio]

    if @author.save
      redirect_to "/authors"
    else
      render :new
    end
  end

  def delete
    @author = author.find_by id: params[:id]
    @author.destroy
    redirect_to author_path
  end

end
