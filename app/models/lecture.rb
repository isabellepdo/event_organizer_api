class Lecture < ApplicationRecord
	attr_accessor :allocated
	attr_default :allocated, false
	attr_default :lightning, false

	belongs_to :event, class_name: 'Event'
	
	validates_presence_of :lecture_minutes, unless: Proc.new {self.lightning?}

	after_create :set_lecture_minutes, if: Proc.new{ self.lightning? }

	def set_lecture_minutes
		time = Time.current.beginning_of_day + 5.minutes
		self.update_column(:lecture_minutes, time)
	end
end
