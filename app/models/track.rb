class Track < ApplicationRecord
	attr_accessor :finished
	attr_default :finished, false

	belongs_to :event, class_name: 'Event'
	has_many :lectures_by_track, class_name:'LectureByTrack', dependent: :destroy

	validates_presence_of :event
end
