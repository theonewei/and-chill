class Video < ApplicationRecord
  validates :name,:format,:genre_id, presence: true

  belongs_to :genre,
    foreign_key: :genre_id,
    class_name: :Genre

  has_many :list,
    foreign_key: :video_id,
    class_name: :List

  has_one_attached :video

  has_one_attached :clip

  has_one_attached :thumbnail
end
