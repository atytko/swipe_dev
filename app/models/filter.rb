class Filter < ApplicationRecord
  belongs_to :user_id

  validates :min_salary, presence: true
  validates :location, presence: true
  validates :skills, presence: true
  validates :benefits, presence: true
  validates :seniority, presence: true
  validates :position, presence: true
  validates :contract_type, presence: true
  validates :job_type, presence: true
end
