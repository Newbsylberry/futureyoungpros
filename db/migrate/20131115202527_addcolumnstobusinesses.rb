class Addcolumnstobusinesses < ActiveRecord::Migration
  def change
    add_column :mous, :business_id, :integer
    add_column :mous, :category_id, :integer
  end
end
