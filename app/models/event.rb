class Event < ApplicationRecord
	has_many :tracks, class_name:'Track', dependent: :destroy
	has_many :lectures, class_name: 'Lecture', dependent: :destroy

	def organizer_event
		track_count = 0
		total_lectured = self.lectures.where(allocated: false).size

		while total_lectured >= 0
			track_add = self.tracks.last.finished? ? self.tracks.last : self.tracks.last
			if self.tracks.last.finished?
				track_add = Track.create!(name: "Track #{track_count}")
				track_count += 1
				@track_allocated_time = Time.current.beginning_of_day + 9.hours
			else
				track_add = self.tracks.last
			end
			
			self.lectures.where(allocated: false).each do |lecture|
				lecture_minutes = lecture.lecture_minutes

				add_lecture_to_track(@track_allocated_time, lecture_minutes);

				if @track_allocated_time = Time.current.beginning_of_day + 12.hours
					@track_allocated_time = Time.current.beginning_of_day + 13.hours
				end
			end			

			total_lectured = total_lectured - 1
		end
	end

	def add_lecture_to_track(@track_allocated_time, lecture_minutes)
		if (@track_allocated_time + lecture_minutes.minutes <= Time.current.beginning_of_day + 12.hours) && (@track_allocated_time + lecture_minutes.minutes <= Time.current.beginning_of_day + 16.hours)
			new_lecture = track_add.lectures_by_track.create!(lecture_id: lecture.id, start_time: @track_allocated_time)
			@track_allocated_time += lecture_minutes.minutes
			lecture.allocated = true 
			lecture.save!
			return
		end
	end
end
