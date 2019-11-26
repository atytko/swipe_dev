class Offer < ApplicationRecord
  has_many :filters
  has_many :swipes
  belongs_to :recruiter_id

  validates :location, presence: true
  validates :min_salary, presence: true
  validates :benefits, presence: true
  validates :skills, presence: true
  validates :position, presence: true
  validates :seniority, presence: true
  validates :description, presence: true
  validates :contract_type, presence: true
  validates :job_type, presence: true
end
