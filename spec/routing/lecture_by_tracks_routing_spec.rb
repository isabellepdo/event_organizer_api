require "rails_helper"

RSpec.describe LectureByTracksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/lecture_by_tracks").to route_to("lecture_by_tracks#index")
    end

    it "routes to #show" do
      expect(:get => "/lecture_by_tracks/1").to route_to("lecture_by_tracks#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lecture_by_tracks").to route_to("lecture_by_tracks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lecture_by_tracks/1").to route_to("lecture_by_tracks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lecture_by_tracks/1").to route_to("lecture_by_tracks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lecture_by_tracks/1").to route_to("lecture_by_tracks#destroy", :id => "1")
    end
  end
end
