class AddSchoolCodeToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :school_code, :integer
  end
end
