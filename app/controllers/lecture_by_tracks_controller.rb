class LectureByTracksController < ApplicationController
  before_action :set_lecture_by_track, only: %i[ show update destroy ]

  # GET /lecture_by_tracks
  def index
    @lecture_by_tracks = LectureByTrack.all

    render json: @lecture_by_tracks
  end

  # GET /lecture_by_tracks/1
  def show
    render json: @lecture_by_track
  end

  # POST /lecture_by_tracks
  def create
    @lecture_by_track = LectureByTrack.new(lecture_by_track_params)

    if @lecture_by_track.save
      render json: @lecture_by_track, status: :created, location: @lecture_by_track
    else
      render json: @lecture_by_track.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lecture_by_tracks/1
  def update
    if @lecture_by_track.update(lecture_by_track_params)
      render json: @lecture_by_track
    else
      render json: @lecture_by_track.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lecture_by_tracks/1
  def destroy
    @lecture_by_track.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecture_by_track
      @lecture_by_track = LectureByTrack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lecture_by_track_params
      params.require(:lecture_by_track).permit(:lecture_id, :track_id, :start_time)
    end
end
