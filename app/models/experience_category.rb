class ExperienceCategory < ActiveRecord::Base
  attr_accessible :category_id, :experience_id
  belongs_to :experience
  belongs_to :category
end
