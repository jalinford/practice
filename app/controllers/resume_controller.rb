class ResumeController < ApplicationController
  def resume
    @categories = Category.order("title ASC")
  end

  def category
    @categories = Category.order("title ASC")
    @category = Category.find_by_title(params[:title])
    @title = @category.title
  end 
end
