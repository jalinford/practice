class Category < ActiveRecord::Base
  attr_accessible :title, :experience_ids
  validates_presence_of :title
  has_many :experience_categories, :dependent => :destroy
  has_many :experiences, :through => :experience_categories, :order => "end_date DESC"
  accepts_nested_attributes_for :experiences
end
