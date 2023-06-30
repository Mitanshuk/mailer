class User < ApplicationRecord
  has_many :courses
  has_many :transactions, through: :courses
  has_many :feedbacks, dependent: :destroy

  enum user_type: { student: 'student', tutor: 'tutor' }

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable,
         :omniauthable,
         omniauth_providers: [:google_oauth2]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.user_type = "student"
    end
  end
end
