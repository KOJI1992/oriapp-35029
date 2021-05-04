class Game < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :review
  belongs_to :user
  has_one_attached :image

  validates :image, :name, :info, :good, :bad, presence: true
  validates :review_id, numericality: { other_than: 0, message: 'Select' }

end
