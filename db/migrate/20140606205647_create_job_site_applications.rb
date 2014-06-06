class CreateJobSiteApplications < ActiveRecord::Migration
  def change
    create_table :job_site_applications do |t|
      t.integer :business_id
      t.integer :school_id
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
