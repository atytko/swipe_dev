class Swipe < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  validates :user_id, presence: true
  validates :offer_id, presence: true
  validates :result, presence: true
end
