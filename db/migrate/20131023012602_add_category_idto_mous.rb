class AddCategoryIdtoMous < ActiveRecord::Migration
  def change
    add_column :mous, :category_id, :integer
  end
end
