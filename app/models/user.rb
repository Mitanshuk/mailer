class User < ApplicationRecord
  has_many :courses, foreign_key: :id
  has_many :transactions, through: :courses, foreign_key: :id

  enum user_type: { student: 'student', tutor: 'tutor' }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
