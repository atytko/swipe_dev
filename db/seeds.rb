# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#.
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts("Deleting DB-------")
Swipe.destroy_all
Offer.destroy_all
User.destroy_all

puts("Creating users-------")
user1 = User.create!(email: "isi3@gmail.com", password: "123456", role: "candidate", first_name: "isabell", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")
userr = User.create!( email: "isii3@gmail.com", password: "123456", role: "candidate", first_name: "isi", last_name: "Sparrow", company_photo: nil, user_photo: nil, company_name: "google")
user2 = User.create!(email: "isi4@gmail.com", password: "123456", role: "candidate", first_name: "isabell1", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")
user3 = User.create!(email: "isiw@gmail.com", password: "123456", role: "candidate", first_name: "isabell2", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")

puts("Creating offers-------")
offer1 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 2000,
  location: 'Lisbon',
  job_type: "full-time",
  contract_type: "Permanent",
  skills: "Angular",
  description: "Work for an emerging startup on the healthcare field",
  position: "Senior Developer",
  benefits: "Private health care",
  seniority: 'Senior'
  )
offer2 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 1000,
  location: 'Porto',
  job_type: "Full-time",
  contract_type: "Permanent",
  skills: "PHP",
  description: "Be a developer for a medium-sized company",
  position: "Developer",
  benefits: "Dog-friendly environment",
  seniority: 'Medium'
  )
offer3 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 2500,
  location: 'Aveiro',
  job_type: "Full-time",
  contract_type: "Permanent",
  skills: "PHP",
  description: "Come work with us!",
  position: "Developer",
  benefits: "No benefits",
  seniority: 'Junior'
  )
offer4 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 3000,
  location: 'Lisbon',
  job_type: "Part-time",
  contract_type: "Permanent",
  skills: "Java",
  description: "Code a mobile application for a gaming company",
  position: "Senior Developer",
  benefits: "Private health care",
  seniority: 'Senior'
  )
offer5 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 4000,
  location: 'Faro',
  job_type: "Part-time",
  contract_type: "Temporary",
  skills: "HTML, CSS, Javascript",
  description: "Front-end developer for a temporary project",
  position: "Front-end developer",
  benefits: "No benefits",
  seniority: 'Junior'
  )

  offer5 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 4000,
  location: 'New York',
  job_type: "Part-time",
  contract_type: "Temporary",
  skills: "HTML, CSS, Javascript",
  description: "Front-end developer for a temporary project",
  position: "Front-end developer",
  benefits: "No benefits",
  seniority: 'Junior'
  )


