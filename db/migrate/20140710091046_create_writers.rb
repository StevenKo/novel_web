class CreateWriters < ActiveRecord::Migration
  def change
    create_table :writers do |t|
      t.string :name
      t.string :email
      t.string :url
      t.string :phone
    
      t.timestamps
    end
  end
end
