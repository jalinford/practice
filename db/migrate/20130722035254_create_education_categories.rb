class CreateEducationCategories < ActiveRecord::Migration
  def change
    create_table :education_categories do |t|
      t.integer :education_highlight_id
      t.integer :category_id

      t.timestamps
    end
  end
end
