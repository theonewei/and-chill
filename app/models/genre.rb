class Genre < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :videos,
    foreign_key: :genre_id,
    class_name: :Video
end
