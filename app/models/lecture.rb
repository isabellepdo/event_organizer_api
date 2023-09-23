class Lecture < ApplicationRecord
	attr_default :lightning, false

	belongs_to :event, class_name: 'Event'
	
	validates_presence_of :lecture_minutes, unless: Proc.new {self.lightning?}
end
