class ResumeController < ApplicationController
  def resume
    @categories = Category.order("title ASC")
  end

  def category
    #Note: need to fix routes to be accessed by filters bar

    @categories = Category.order("title ASC")

    @category_all = Category.find_all_by_title(params[:title].split('/'))

    @educ_combined = []
    @category_all.each do |category|
      category.education_highlights.each do |highlight|
        @educ_combined.push(highlight.education)
      end
    end
    @educ_combined = @educ_combined.uniq

    @exp_combined = []
    @category_all.each do |category|
      category.experiences.each do |experience|
        @exp_combined.push(experience)
      end
    end
    @exp_combined = @exp_combined.uniq

    @title = "Resume"
  end 
end

  def cat_educ(category)
    educations = []
      category.education_highlights.each do |highlight|
        educations.push(highlight.education)
      end
      educations = educations.uniq
      return educations
  end