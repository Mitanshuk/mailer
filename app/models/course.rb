class Course < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_many :feedbacks, dependent: :destroy

  validates :title, presence: true
  validates :price, presence: true

  has_one_attached :video
  has_one_attached :image
  has_one_attached :pdf

  # mount_uploader :video, VideoUploader
  # mount_uploader :image, ImageUploader
  # mount_uploader :pdf, PdfUploader
end
