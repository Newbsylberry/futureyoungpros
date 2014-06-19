class AddSchoolCodeToJobSiteApplication < ActiveRecord::Migration
  def change
    add_column :job_site_applications, :school_code, :integer
  end
end
