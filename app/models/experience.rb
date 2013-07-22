class Experience < ActiveRecord::Base
  attr_accessible :description, :end_date, :location, :position, :start_date, :title, :category_ids
  validates_presence_of :title
  has_many :experience_categories, :dependent => :destroy
  has_many :categories, :through => :experience_categories
  accepts_nested_attributes_for :categories
  scope :ordered, order("title ASC")
end
