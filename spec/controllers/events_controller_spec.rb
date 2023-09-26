require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe 'GET #organizer_event' do
    it 'organizes the event’s lectures' do
      event = Event.create(name: 'Meu Evento')
      lecture1 = Lecture.create(name: 'Palestra 1', allocated: false, event: event, lecture_minutes: 30)
      lecture2 = Lecture.create(name: 'Palestra 2', allocated: false, event: event, lecture_minutes: 45)

      get :organizer_event, params: { id: event.id }

      expect(response).to have_http_status(200)
      expect(assigns(:event).tracks.count).to eq(1)

      expect(lecture1.reload.allocated).to be true
      expect(lecture2.reload.allocated).to be true
    end

    it 'retorna erro em caso de falha na organização' do
      event = Event.create(name: 'Meu Evento')

      get :organizer_event, params: { id: event.id }

      expect(response).to have_http_status(422)
    end
  end
end
