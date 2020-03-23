module Api::V1
  class TitlesController < ApiController

    # GET /v1/titles
    def index
      render json: Title.all
    end
  
  end
end