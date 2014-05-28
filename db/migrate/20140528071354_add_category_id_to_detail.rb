class AddCategoryIdToDetail < ActiveRecord::Migration
  def change
  	add_column :details, :categoryID, :int
  end
end
