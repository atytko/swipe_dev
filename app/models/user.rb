class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable
  mount_uploader :photo, PhotoUploader
  has_many :offers, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :swipes


  def self.from_omniauth(auth)
    where(provider: auth.provider,uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth["info"].email
      user.first_name = auth["info"].first_name
      user.last_name = auth["info"].last_name
      user.remote_photo_url = auth["info"].picture_url
    end
  end


  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def password_required?
    super && provider.blank?
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end
end
