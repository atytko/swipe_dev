class Swipe < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  has_one :chat_room, dependent: :destroy

  scope :right, -> { where(result: true) }
  scope :left, -> { where(result: false) }

  scope :offer, -> { where(offer: offer_id) }

  validates :offer, uniqueness: { scope: :user }
end
