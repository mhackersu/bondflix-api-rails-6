class TitleSerializer < ActiveModel::Serializer
  attributes :imdb_id, :title, :year, :rated, :released, :runtime, :genre, :director, :writers, :actors, :plot, :country, :language, :metascore, :poster, :rating, :votes, :budget, :opening_weekend, :gross, :production, :parent_id, :type, :session, :episode_id, :status
end