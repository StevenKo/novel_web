class AddIsPopularToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :is_popular, :boolean, :default => false
  end
end
