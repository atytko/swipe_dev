# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#.
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
user1 = User.create!(email: "isi3@gmail.com", password: "123456", role: "candidate", first_name: "isabell", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")
userr = User.create!( email: "isii3@gmail.com", password: "123456", role: "candidate", first_name: "isi", last_name: "Sparrow", company_photo: nil, user_photo: nil, company_name: "google")
user2 = User.create!(email: "isi4@gmail.com", password: "123456", role: "candidate", first_name: "isabell1", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")
user3 = User.create!(email: "isiw@gmail.com", password: "123456", role: "candidate", first_name: "isabell2", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")


offer1 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 2000,
  location: 'Lisbon',
  job_type: "full-time",
  contract_type: "permanent",
  skills: "PHP",
  description: "XYZ",
  position: "developer",
  benefits: "private health care",
  seniority: 'junior'
  )

