class TitlesController < ApplicationController
  before_action :set_title, only: [:show, :update, :destroy]

  # GET /titles
  def index
    @titles = Title.all

    render json: @titles
  end

  # GET /titles/1
  def show
    render json: @title
  end

  # POST /titles
  def create
    @title = Title.new(title_params)

    if @title.save
      render json: @title, status: :created, location: @title
    else
      render json: @title.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /titles/1
  def update
    if @title.update(title_params)
      render json: @title
    else
      render json: @title.errors, status: :unprocessable_entity
    end
  end

  # DELETE /titles/1
  def destroy
    @title.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title
      @title = Title.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def title_params
      params.require(:title).permit(:imdb_id, :title, :year, :rated, :released, :runtime, :genre, :director, :writers, :actors, :plot, :country, :language, :metascore, :poster, :rating, :votes, :budget, :opening_weekend, :gross, :production, :parent_id, :type, :session, :episode_id, :status)
    end
end
