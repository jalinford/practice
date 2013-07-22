class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :position
      t.string :location
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
