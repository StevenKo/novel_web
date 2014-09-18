class AddSlugToTables < ActiveRecord::Migration
  def change
    add_column :articles, :slug, :string
    add_index :articles, :slug
    add_column :novels, :slug, :string
    add_index :novels, :slug
    add_column :categories, :slug, :string
    add_index :categories, :slug
    add_column :recommend_categories, :slug, :string
    add_index :recommend_categories, :slug
  end
end
