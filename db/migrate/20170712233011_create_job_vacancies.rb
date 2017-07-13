class CreateJobVacancies < ActiveRecord::Migration
  def change
    create_table :job_vacancies do |t|
      t.integer :company_id
      t.string :position
      t.string :description
      t.date :due_date
      t.boolean :visible
      t.string :company_name
      t.string :location
      t.string :level
      t.string :qualification
      t.decimal :salary_range_min
      t.decimal :salary_range_max
      t.string :job_type
      t.boolean :negotiable_salary, default: true
      t.string :slug, unique: true

      t.timestamps null: false
    end
  end
end
