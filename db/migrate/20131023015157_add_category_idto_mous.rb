class AddCategoryIdtoMous < ActiveRecord::Migration
  def change
    add_column :mous, :category_id, :integer
    add_column :mous, :subcategory_id, :integer
    add_column :mous, :business_id, :integer
  end
end
