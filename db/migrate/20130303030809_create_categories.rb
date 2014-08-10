class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :link
      t.string :cat_link
    
      t.timestamps
    end
  end
end
