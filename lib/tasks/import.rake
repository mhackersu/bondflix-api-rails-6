namespace :import do
  desc "Import Bond Titles"
  task titles: :environment do
    filename = File.join Rails.root, "./db/titles.csv"
    # SmarterCSV.process(filename, col_sep: '|') do |row|
      # Title.create! row 
    # end
    CSV.foreach(filename, headers: true) do |row|
      Title.create(imdb_id: row[0], title: row[1], year: row[2], rated: row[3], released: row[4], runtime: row[5], genre: row[6], director: row[7], writers: row[8], actors: row[9], plot: row[10], country: row[11], language: row[12], metascore: row[13], poster: row[14], rating: row[15], votes: row[16], budget: row[17], opening_weekend: row[18], gross: row[19], production: row[20], parent_id: row[21], title_type: row[22], session: row[23], episode_id: row[24], status: row[25])
    end
  end
end


# require 'csv'

# namespace :import do
#   desc "Import titles from ./db/titles.csv"
#   task titles: :environment do
#     filename = File.join Rails.root, "db/titles.csv"
#     # quote_chars = %w(" | ~ ^ & *)
#     # quote_chars = %w("|")
    
#     SmarterCSV.process(filename, col_sep: '|') do |row|
#       Title.create! row
    
#       # CSV.foreach(filename, quote_char: quote_chars, headers: true) do |row|
#       # CSV.foreach(filename, quote_char: "|", liberal_parsing: true, headers: true) do |row|
#       # CSV.foreach(filename, quote_char: "|", headers: true) do |row|
#       # puts row.inspect
#       # Title.create!(row.to_hash)

#       # data = Title.new(imdb_id: row["imdb_id"], title: row["title"], year: row["year"], rated: row["rated"], released: row["released"], runtime: row["runtime"], genre: row["genre"], director: row["director"], writers: row["writers"], actors: row["actors"], plot: row["plot"], country: row["country"], language: row["language"], metascore: row["metascore"], poster: row["poster"], rating: row["rating"], votes: row["votes"], budget: row["budget"], opening_weekend: row["opening_weekend"], gross: row["gross"], production: row["production"], parent_id: row["parent_id"], type: row["type"], session: row["session"], episode_id: row["episode_id"], status: row["status"])
#       # data.save
      
#       # p row
#       # p row ["imdb_id"]
      
#       #imdb_id, title, year, rated, released, runtime, genre, director, writers, actors, plot, country, language, metascore, poster, rating, votes, budget, opening_weekend, gross, production, parent_id, type, session, episode_id, status = row

#       # Title.create(imdb_id: imdb_id, title: title, year: year, rated: rated, released: released, runtime: runtime, genre: genre, director: director, writers: writers, actors: actors, plot: plot, country: country, language: language, metascore: metascore, poster: poster, rating: rated, votes: votes, budget: budget, opening_weekend: opening_weekend, gross: gross, production: production, parent_id: parent_id, type: type, session: session, episode_id: episode_id, status: status)
#     end
#   end
# end

# # Generate Model for Titles
# # rails g model Title imdb_id:string title:string year:string rated:string released:string runtime:string genre:string director:string writers:string actors:string plot:string country:string language:string metascore:string poster:string rating:string votes:string budget:string opening_weekend:string gross:string production:string parent_id:string type:string session:string episode:string status:string