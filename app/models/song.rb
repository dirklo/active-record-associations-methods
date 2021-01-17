class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    self.artist = Artist.find_by(name: "Drake") || create_artist(name: "Drake")
  end
end