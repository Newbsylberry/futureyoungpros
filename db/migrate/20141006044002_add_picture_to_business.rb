class AddPictureToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :picture, :string
  end
end
