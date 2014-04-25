class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :company_website
      t.string :company_logo
      t.string :job_title
      t.string :job_type
      t.string :job_category
      t.string :job_salary
      t.string :job_tags
      t.string :job_location
      t.text :job_description
      t.text :job_apply

      t.timestamps
    end
  end
end
