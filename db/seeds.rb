# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#.
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create!( email: "isi1@gmail.com", password: "123456", role: "candidate", first_name: "isabell", company_photo: nil, user_photo: nil, company_name: "google")
userr = User.create!( email: "isii@gmail.com", password: "123456", role: "candidate", first_name: "isi", company_photo: nil, user_photo: nil, company_name: "google")
user2 = User.create!(email: "isi2@gmail.com", password: "123456", role: "candidate", first_name: "isabell1", company_photo: nil, user_photo: nil, company_name: "google")
user3 = User.create!(email: "isi3@gmail.com", password: "123456", role: "candidate", first_name: "isabell2", company_photo: nil, user_photo: nil, company_name: "google")


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

