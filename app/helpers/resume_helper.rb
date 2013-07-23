module ResumeHelper
	def cat_educ(category)
		educations = []
    	category.education_highlights.each do |highlight|
    		educations.push(highlight.education)
   		end
    	educations = educations.uniq
    	return educations
	end
end
