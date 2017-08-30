class Api::V1::MashupsController < ApplicationController
  before_action :authorize_user!, only: [:create]

  def index
    @mashups = Mashup.all.order(created_at: :DESC)

    render json: @mashups
  end

  def create
    @user_mashups = current_user.mashups
    @mashup = Mashup.new
    @mashup.title = mashup_params['title']
    @mashup.user = current_user
    mashup_params['videos'].each do |video|
      @mashup.videos << Video.find_or_create_by(video)
    end

    if @mashup.save
      render json: @mashup
    else
      render json: {"error": "invalid"}
    end
  end

  private

  def mashup_params
    params.permit(:title, :videos => [:youtube_id, :title, :thumbnail])
  end

end
