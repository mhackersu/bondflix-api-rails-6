class CreateTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :titles do |t|
      t.string :imdb_id
      t.string :title
      t.string :year
      t.string :rated
      t.string :released
      t.string :runtime
      t.string :genre
      t.string :director
      t.string :writers
      t.string :actors
      t.string :plot
      t.string :country
      t.string :language
      t.string :metascore
      t.string :poster
      t.string :rating
      t.string :votes
      t.string :budget
      t.string :opening_weekend
      t.string :gross
      t.string :production
      t.string :parent_id
      t.string :title_type
      t.string :session
      t.string :episode_id
      t.string :status

      t.timestamps
    end
  end
end
