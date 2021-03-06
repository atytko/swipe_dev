puts("Deleting DB-------")
Match.destroy_all
Swipe.destroy_all
Offer.destroy_all
User.destroy_all

puts("Creating users-------")
user1 = User.create!(email: "isi3@gmail.com", password: "123456", role: "candidate", first_name: "isabell", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")
user2 = User.create!( email: "isii3@gmail.com", password: "123456", role: "candidate", first_name: "isi", last_name: "Sparrow", company_photo: nil, user_photo: nil, company_name: "google")
user3 = User.create!(email: "isi4@gmail.com", password: "123456", role: "candidate", first_name: "isabell1", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")
user4 = User.create!(email: "isiw@gmail.com", password: "123456", role: "candidate", first_name: "isabell2", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")
user5 = User.create!(email: "k.smith@gmail.com", password: "123456", role: "candidate", first_name: "Karen", last_name: "Smith",  company_photo: nil, user_photo: nil, company_name: "google")



puts("Creating offers-------")
  puts("Deleting DB-------")
Match.destroy_all
Swipe.destroy_all
Offer.destroy_all
User.destroy_all

puts("Creating users-------")
user1 = User.create!(email: "isi3@gmail.com", password: "123456", role: "candidate", first_name: "isabell", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")
user2 = User.create!( email: "isii3@gmail.com", password: "123456", role: "candidate", first_name: "isi", last_name: "Sparrow", company_photo: nil, user_photo: nil, company_name: "google")
user3 = User.create!(email: "isi4@gmail.com", password: "123456", role: "candidate", first_name: "isabell1", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")
user4 = User.create!(email: "isiw@gmail.com", password: "123456", role: "candidate", first_name: "isabell2", last_name: "Sparrow",  company_photo: nil, user_photo: nil, company_name: "google")
user5 = User.create!(email: "k.smith@gmail.com", password: "123456", role: "candidate", first_name: "Karen", last_name: "Smith",  company_photo: nil, user_photo: nil, company_name: "google")



puts("Creating offers-------")
  offer1 = Offer.create!(
    recruiter: User.all.sample,
    min_salary: 2000,
    location: 'New York',
    job_type: "Full-time",
    contract_type: "Permanent",
    skills: "Ruby",
    description: "You don't need a decade of experience but you must have a natural talent and passion for coding and enthusiasm to grow as a developer.",
    position: "Full-stack",
    benefits: "Dog-friendly",
    seniority: 'Junior',
    company_photo: "accenture.jpg",
    company_name: "Accenture"
  )

  offer2 = Offer.create!(
    recruiter: User.all.sample,
    min_salary: 2000,
    location: 'New York',
    job_type: "Full-time",
    contract_type: "Permanent",
    skills: "Ruby",
    description: "Join our growing product development team. As part of the role you will work closely with a team of firmware & software engineers and architects to deliver a truly exciting and innovative product.",
    position: "Full-stack",
    benefits: "Dog-friendly",
    seniority: 'Senior',
    company_photo: "twitter.jpg",
    company_name: "Twitter"
  )

  offer3 = Offer.create!(
    recruiter: User.all.sample,
    min_salary: 2000,
    location: 'London',
    job_type: "Part-time",
    contract_type: "Permanent",
    skills: "Javascript",
    description: "We are looking for a developer that is eager to learn more and able to work in a team.",
    position: "Front-end",
    benefits: "Dog-friendly",
    seniority: 'Senior',
    company_photo: "facebook.jpg",
    company_name: "Facebook"
  )

  offer4 = Offer.create!(
    recruiter: User.all.sample,
    min_salary: 4000,
    location: 'Berlin',
    job_type: "Part-time",
    contract_type: "Permanent",
    skills: "Ruby",
    description: "Short project. Previous experience with Javascript required.",
    position: "Front-end",
    benefits: "Dog-friendly",
    seniority: 'Junior',
    company_photo: "whatsapp.jpg",
    company_name: "Whatsapp"
  )

  offer5 = Offer.create!(
    recruiter: User.all.sample,
    min_salary: 2000,
    location: 'New York',
    job_type: "Full-time",
    contract_type: "Permanent",
    skills: "Ruby",
    description: "We are looking for a talented and enthusiastic web developer to help us build fun, intelligent, interactive experiences for our Clients and come up with innovative, creative ideas, thinking outside of the box.",
    position: "Full-stack",
    benefits: "Dog-friendly",
    seniority: 'Junior',
    company_photo: "tesla.jpg",
    company_name: "Tesla"
  )

  offer6 = Offer.create!(
    recruiter: User.all.sample,
    min_salary: 2000,
    location: 'New York',
    job_type: "Part-time",
    contract_type: "Permanent",
    skills: "Ruby",
    description: "Looking for a Ruby developer to work on scalable, high-availability websites. Dogs accepted.",
    position: "Full-stack",
    benefits: "Dog-friendly",
    seniority: 'Junior',
    company_photo: "google.jpg",
    company_name: "Google"
  )

  offer7 = Offer.create!(
    recruiter: User.all.sample,
    min_salary: 2000,
    location: 'New York',
    job_type: "Full-time",
    contract_type: "Permanent",
    skills: "Ruby",
    description: "You will be responsible for working within a dedicated team of higly skilled developers.",
    position: "Full-stack",
    benefits: "Dog-friendly",
    seniority: 'Senior',
    company_photo: "instagram.jpg",
    company_name: "Instagram"
  )

  offer8 = Offer.create!(
    recruiter: User.all.sample,
    min_salary: 2000,
    location: 'New York',
    job_type: "Full-time",
    contract_type: "Permanent",
    skills: "Ruby",
    description: "We are looking for a Ruby developer responsible for managing the interchange of data between the server and the users.",
    position: "Full-stack",
    benefits: "Dog-friendly",
    seniority: 'Junior',
    company_photo: "cisco.jpg",
    company_name: "Cisco"
  )

offer9 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 4000,
  location: 'New York',
  job_type: "Part-time",
  contract_type: "Permanent",
  skills: "Javascript",
  description: "Come work at an emerging startup in the HR field.",
  position: "Front-end",
  benefits: "Dog-friendly",
  seniority: 'Junior',
  company_photo: "spotify.jpg",
  company_name: "Spotify"
)

offer10 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 4000,
  location: 'Madrid',
  job_type: "Part-time",
  contract_type: "Permanent",
  skills: "Javascript",
  description: "Front-end developer for a temporary project.",
  position: "Front-end",
  benefits: "Dog-friendly",
  seniority: 'Junior',
  company_photo: "amazon.jpg",
  company_name: "Amazon"
)

offer11 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 4000,
  location: 'Porto',
  job_type: "Part-time",
  contract_type: "Permanent",
  skills: "Javascript",
  description: "Our team of talented engineers and designers our empowered to deliver. We offer structured career development to all of our people ensuring they have the skills and experience to grow.",
  position: "Front-end",
  benefits: "Dog-friendly",
  seniority: 'Junior',
  company_photo: "ubs.jpg",
  company_name: "UBS"
)

offer12 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 4000,
  location: 'Munich',
  job_type: "Part-time",
  contract_type: "Permanent",
  skills: "Javascript",
  description: "Front-end developer for a permanent project.",
  position: "Front-end",
  benefits: "Dog-friendly",
  seniority: 'Junior',
  company_photo: "sap.jpg",
  company_name: "SAP"
)

offer13 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 4000,
  location: 'Lisbon',
  job_type: "Full-time",
  contract_type: "Permanent",
  skills: "Python",
  description: "Hiring a Python developer for a permanent position.",
  position: "Back-end",
  benefits: "Dog-friendly",
  seniority: 'Medium',
  company_photo: "apple.jpg",
  company_name: "Apple"
)

offer14 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 2000,
  location: 'New York',
  job_type: "Full-time",
  contract_type: "Permanent",
  skills: "Ruby",
  description: "Exciting opportunity to join a multinational company with great salary.",
  position: "Full-stack",
  benefits: "Dog-friendly",
  seniority: 'Medium',
  company_photo: "microsoft.jpg",
  company_name: "Microsoft"
)

offer15 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 2000,
  location: 'New York',
  job_type: "Full-time",
  contract_type: "Permanent",
  skills: "Ruby",
  description: "Looking for experienced Ruby full-stack developer for a project.",
  position: "Full-stack",
  benefits: "Dog-friendly",
  seniority: 'Medium',
  company_photo: "ibm.jpg",
  company_name: "IBM"
)

offer16 = Offer.create!(
  recruiter: User.all.sample,
  min_salary: 2000,
  location: 'New York',
  job_type: "Full-time",
  contract_type: "Permanent",
  skills: "Ruby",
  description: "You will be working in a fast paced, exciting and rewarding environment with a great deal of opportunity to further your career. You will have the opportunity to make a real difference to the company and our clients, as well as to yourselves.",
  position: "Full-stack",
  benefits: "Dog-friendly",
  seniority: 'Senior',
  company_photo: "olx.jpg",
  company_name: "Olx"
)
