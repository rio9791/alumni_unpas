# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Account.with_role(:admin).blank?
  admin = Account.new({email: 'admin@alumniunpas.edu', password: 'password', password_confirmation: 'password'})
  admin.save!
  admin.confirm
  admin.add_role(:admin)
end

unless JobVacancy.all.size > 0
  salary_min = 2000000
  increase_salary = 10000000
  30.times do
    job = JobVacancy.create({position: Faker::Job.title,
                              company_name: Faker::Company.name,
                              description: Faker::Company.catch_phrase,
                              location: Faker::Address.city,
                              salary_range_min: salary_min,
                              salary_range_max: (salary_min..increase_salary).to_a.sample})
    puts "Creating jobs.."
  end
end
