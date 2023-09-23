require 'rails_helper'

RSpec.describe "LectureByTracks", type: :request do
  describe "GET /lecture_by_tracks" do
    it "works! (now write some real specs)" do
      get lecture_by_tracks_path
      expect(response).to have_http_status(200)
    end
  end
end
