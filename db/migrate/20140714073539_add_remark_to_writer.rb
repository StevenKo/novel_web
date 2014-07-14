class AddRemarkToWriter < ActiveRecord::Migration
  def change
    add_column :writers, :remark, :text
  end
end
