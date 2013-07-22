class CreateEducationHighlights < ActiveRecord::Migration
  def change
    create_table :education_highlights do |t|
      t.integer :education_id
      t.string :highlight

      t.timestamps
    end
  end
end
