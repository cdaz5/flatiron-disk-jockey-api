class Api::V1::MashupsController < ApplicationController

  def index
    @mashups = Mashup.all

    render json: @mashups
  end

  def create
    @mashup = Mashup.new
    @mashup.title = mashup_params['title']
    @mashup.user = User.find(mashup_params['user_id'])

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
    params.require(:mashup).permit(:title, :user_id, :videos => [:id, :youtube_id, :title, :thumbnail])
  end

end
