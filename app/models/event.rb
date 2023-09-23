class Event < ApplicationRecord
	has_many :tracks, class_name:'Track', dependent: :destroy
	has_many :lectures, class_name: 'Lecture', dependent: :destroy

	def organizer_event
		track_count = 0

		self.lectures.each do |lecture|
			track_add = self.tracks.last.finished? ? self.tracks.last : self.tracks.last
			if self.tracks.last.finished?
				track_add = 
			else
				track_add = self.tracks.last
			end
		end
	end
end
