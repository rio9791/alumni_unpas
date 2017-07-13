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
#

require 'test_helper'

class JobVacancyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
