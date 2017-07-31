class Mashup < ApplicationRecord
  belongs_to :user
  has_many :mashup_videos
  has_many :videos, through: :mashup_videos
  validates :title, presence: true
end
