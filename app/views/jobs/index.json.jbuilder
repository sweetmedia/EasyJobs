json.array!(@jobs) do |job|
  json.extract! job, :id, :company_name, :company_website, :company_logo, :job_title, :job_type, :job_category, :job_salary, :job_location, :job_description, :job_apply
  json.url job_url(job, format: :json)
end
