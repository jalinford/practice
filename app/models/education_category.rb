class EducationCategory < ActiveRecord::Base
  attr_accessible :category_id, :education_highlight_id
  belongs_to :category
  belongs_to :education_highlight
end
