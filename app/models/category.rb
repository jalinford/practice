class Category < ActiveRecord::Base
  attr_accessible :title, :experience_ids, :education_highlight_ids
  validates_presence_of :title
  validates_uniqueness_of :title
  has_many :experience_categories, :dependent => :destroy
  has_many :experiences, :through => :experience_categories, :order => "end_date DESC, start_date ASC"
  has_many :education_categories, :dependent => :destroy
  has_many :education_highlights, :through => :education_categories
  accepts_nested_attributes_for :experiences, :education_highlights
end