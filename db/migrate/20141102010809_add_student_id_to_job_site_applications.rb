class AddStudentIdToJobSiteApplications < ActiveRecord::Migration
  def change
    add_column :job_site_applications, :student_id, :integer
  end
end
