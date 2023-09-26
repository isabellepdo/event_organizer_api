require 'rails_helper'

RSpec.describe Event, type: :model do
	describe '#organizer_event' do
		it 'organizes lectures on tracks' do
			event = Event.create(name: 'Meu Evento')
			lecture1 = Lecture.create(name: 'Palestra 1', allocated: false, event: event, lecture_minutes: 30)
			lecture2 = Lecture.create(name: 'Palestra 2', allocated: false, event: event, lecture_minutes: 45)

			expect do
				event.organizer_event
			end.to change { event.tracks.count }.by(1)

			expect(lecture1.reload.allocated).to be true
			expect(lecture2.reload.allocated).to be true
		end
	end
end