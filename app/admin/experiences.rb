ActiveAdmin.register Experience do
   menu :parent => "Resume"

    form do |f|                         
    f.inputs "Job/Experience Details" do       
      f.input :title, :hint => "Name of Company"                 
      f.input :position               
      f.input :location
      f.input :start_date
      f.input :end_date
      f.input :description
      f.input :categories, :as => :check_boxes
    end                               
    f.actions                         
  end
end
