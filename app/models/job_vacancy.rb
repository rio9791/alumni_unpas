# == Schema Information
#
# Table name: job_vacancies
#
#  id                :integer          not null, primary key
#  company_id        :integer
#  position          :string
#  description       :string
#  due_date          :date
#  visible           :boolean
#  company_name      :string
#  location          :string
#  level             :string
#  qualification     :string
#  salary_range_min  :decimal(, )
#  salary_range_max  :decimal(, )
#  job_type          :string
#  negotiable_salary :boolean          default(TRUE)
#  slug              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  about_company     :text
#

class JobVacancy < ActiveRecord::Base
  extend FriendlyId
  friendly_id :position, use: :slugged

  VISIBILITY = [['Ya', true], ['Tidak', false]]
  NEGOTIABLE = [['Ya', true], ['Tidak', false]]
  LEVEL = ['Fresh Graduate', 'Junior', 'Mid Senior', 'Senior']
  QUALIFICATION = ['Diploma', 'Sarjana', 'Magister', 'Doktor']
  JOBTYPE = ['Full-time', 'Hourly']

  scope :available, -> { where("due_date >= ?", Date.today)}

  validates_presence_of :position, :company_name, :description, :location, :salary_range_min, :salary_range_max

  class << self

    def search_with_params(params)
      jobs = available
      jobs = jobs.where("position ILIKE '%#{params[:position]}%'") if params[:position].present?
      jobs = jobs.where("company_name ILIKE '%#{params[:company]}%'") if params[:company].present?
      jobs = jobs.where("location ILIKE '%#{params[:location]}%'") if params[:location].present?
      jobs
    end

  end

end
