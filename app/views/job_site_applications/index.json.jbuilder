json.array!(@job_site_applications) do |job_site_application|
  json.extract! job_site_application, :business_id, :school_id, :first_name, :last_name
  json.url job_site_application_url(job_site_application, format: :json)
end
