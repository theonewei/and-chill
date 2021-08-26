class PlaybackLocation < ApplicationRecord
  validates :profile_id, :video_id, presence: true

  belongs_to :profile,
    foreign_key: :profile_id,
    class_name: :Profile

  belongs_to :video,
    foreign_key: :video_id,
    class_name: :Video
end
