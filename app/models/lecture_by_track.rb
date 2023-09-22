class LectureByTrack < ApplicationRecord
  belongs_to :lecture, class_name: 'Lecture'
  belongs_to :track, class_name: 'Track'
end
