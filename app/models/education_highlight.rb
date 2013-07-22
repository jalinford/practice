class EducationHighlight < ActiveRecord::Base
  attr_accessible :education_id, :highlight, :category_ids
  validates_presence_of :highlight
  has_many :education_categories, :dependent => :destroy
  has_many :categories, :through => :education_categories
  belongs_to :education
  accepts_nested_attributes_for :education, :categories
end