class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :name
      t.string :description
      t.belongs_to :categories
      
      t.timestamps
    end
  end
end
