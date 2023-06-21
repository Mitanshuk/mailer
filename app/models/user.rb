class User < ApplicationRecord
  has_many :courses, foreign_key: :id
  has_many :transactions, through: :courses, foreign_key: :id
  has_many :feedbacks, dependent: :destroy

  enum user_type: { student: 'student', tutor: 'tutor' }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
