class Track < ApplicationRecord
  belongs_to :event, class_name: 'Event'
  has_many :lectures_by_track, class_name:'LectureByTrack', dependent: :destroy
end
