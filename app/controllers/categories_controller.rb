class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
    3.times { @category.children.build(:name => "test") }
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
