class VideosController < ApplicationController
  before_action :fetch_video!, only: [:show, :update]

  def index
    @videos = Video.all
  end

  def show
  end

  def new
    byebug
    @video = Video.new(video_params)
  end

  def create
  end

  def destroy
  end

  def update
  end

  private

  def fetch_video!
    @video = Video.find(params[:id])
  end

  def video_params
  end
end
