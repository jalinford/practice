ActiveAdmin.register Education do
  menu :parent => "Resume"

  form do |f|                         
	f.inputs "Education Details" do       
	  f.input :name                  
	  f.input :location          
	  f.input :start_date
	  f.input :end_date

	  	f.has_many :education_highlights do |e|
	  		e.input :highlight
	  		e.input :categories, :as => :check_boxes
	  		e.input :_destroy, :as=>:boolean, :required => false, :label=>'Check this box to remove the above Highlight when Education updated'
	  	end

	end                               
	f.actions                         
  end

end