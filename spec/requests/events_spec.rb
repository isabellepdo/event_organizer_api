require 'rails_helper'

RSpec.describe 'Events API', type: :request do
	describe 'GET /events' do
		it 'returns a list of events' do
			create_list(:event, 3)

			get '/events'

			expect(response).to have_http_status(200)
			expect(JSON.parse(response.body).size).to eq(3)
		end
	end

	describe 'POST /events' do
		it 'create a new event' do
			event_params = {
				name: 'Evento de Teste',
				date: '2023-10-01',
				location: 'Local de Teste'
			}

			expect do
				post '/events', params: { event: event_params }
			end.to change(Event, :count).by(1)

			expect(response).to have_http_status(201)
		end
	end

	describe 'GET /events/:id' do
		it 'returns an event' do
			event = create(:event)

			get "/events/#{event.id}"

			expect(response).to have_http_status(200)
			expect(JSON.parse(response.body)['name']).to eq(event.name)
		end
	end

	describe 'PUT /events/:id' do
		it 'update an event' do
			event = create(:event)
			updated_attributes = { name: 'Novo Nome' }

			put "/events/#{event.id}", params: { event: updated_attributes }

			expect(response).to have_http_status(204)
			expect(event.reload.name).to eq('Novo Nome')
		end
	end

	describe 'DELETE /events/:id' do
		it 'delete an event' do
			event = create(:event)

			expect do
				delete "/events/#{event.id}"
			end.to change(Event, :count).by(-1)

			expect(response).to have_http_status(204)
		end
	end
end

