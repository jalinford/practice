class Education < ActiveRecord::Base
  attr_accessible :end_date, :location, :name, :start_date, :education_highlight_ids, :education_highlights_attributes
  validates_presence_of :name
  has_many :education_highlights, :dependent => :destroy
  accepts_nested_attributes_for :education_highlights, :allow_destroy => true
end