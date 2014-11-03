class AddClassIdToJobSiteApplications < ActiveRecord::Migration
  def change
    add_column :job_site_applications, :school_class_id, :integer
  end
end
