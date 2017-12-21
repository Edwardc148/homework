class Artist < ApplicationRecord
  has_many :albums,
    class_name: 'Album',
    foreign_key: :artist_id,
    primary_key: :id

  def n_plus_one_tracks
    albums = self.albums
    tracks_count = {}
    albums.each do |album|
      tracks_count[album.title] = album.tracks.length
    end

    tracks_count
  end

  def better_tracks_query
    all_albums = self.albums.select('albums.*, COUNT(*) AS ct').joins(:tracks).group('albums.id')
     .group('albums.id')

    hash = Hash.new

    all_albums.each do |alb|
      hash[alb] = alb.ct
    end
    hash
  end
end
