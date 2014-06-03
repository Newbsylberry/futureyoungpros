class AddJobSiteToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :job_site, :boolean
  end
end
