class AddTeachInfoToSchools < ActiveRecord::Migration
  def change
    add_column :school_classes, :contact_first_name, :string
    add_column :school_classes, :contact_last_name, :string
  end
end
