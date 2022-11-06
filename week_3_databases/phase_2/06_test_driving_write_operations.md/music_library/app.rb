require_relative 'lib/database_connection'
require_relative "lib/album_repository"

DatabaseConnection.connect('music_library')

album_repository = AlbumRepository.new

# Get album with id 2
# album = album_repository.find(2)

# puts album.id
# puts album.title
# puts album.release_year

# Create an artist
# new_album = Album.new
# new_album.title = 'Trompe le Monde'
# new_album.release_year = 1991
# new_album.artist_id = 1

# album_repository.create(new_album)

# Delete the above album
#album_repository.delete(15)

# Update an album
updated_album = Album.new
updated_album.id = 1
updated_album.title = 'PLEASE'
updated_album.release_year = 2022
updated_album.artist_id = 1


album_repository.update(updated_album)

# print the albums
album_repository.all.each do |album|
  p album
end