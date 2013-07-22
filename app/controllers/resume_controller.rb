class ResumeController < ApplicationController
  def resume
    @categories = Category.order("title ASC")
  end

  def category
    @categories = Category.order("title ASC")
    @category = Category.find_by_title(params[:title])

    @educations = []
    @category.education_highlights.each do |highlight|
    	@educations.push(highlight.education)
    end
    @educations = @educations.uniq

    @title = @category.title
  end 
end
