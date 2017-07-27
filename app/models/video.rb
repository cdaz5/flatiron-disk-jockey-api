class Video < ApplicationRecord
  has_many :mashup_videos
  has_many :mashups, through: :mashup_videos
end
