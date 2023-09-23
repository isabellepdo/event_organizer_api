class LectureByTrack < ApplicationRecord
	belongs_to :lecture, class_name: 'Lecture'
	belongs_to :track, class_name: 'Track'
	
	validates_presence_of :lecture, :track
end
