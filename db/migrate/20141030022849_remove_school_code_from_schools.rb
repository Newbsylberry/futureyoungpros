class RemoveSchoolCodeFromSchools < ActiveRecord::Migration
  def change
    remove_column :schools, :school_code, :string
  end
end
