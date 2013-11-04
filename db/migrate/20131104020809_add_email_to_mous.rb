class AddEmailToMous < ActiveRecord::Migration
  def change
    add_column :mous, :emailAddress, :string
    remove_column :mous, :user_id
  end
end
