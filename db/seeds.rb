# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#.
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
