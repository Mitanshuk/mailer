class Course < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_many :feedbacks, dependent: :destroy

  validates :title, presence: true
  validates :price, presence: true
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  mount_uploader :pdf, PdfUploader
end
