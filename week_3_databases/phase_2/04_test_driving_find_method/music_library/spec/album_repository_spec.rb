require_relative "../lib/album_repository"

describe AlbumRepository do

  def reset_albums_table
    seed_sql = File.read('spec/seeds_albums.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
    connection.exec(seed_sql)
  end
  
    before(:each) do 
      reset_albums_table
    end

  it "returns all albums" do
    repo = AlbumRepository.new

    albums = repo.all

    expect(albums.length).to eq 2
    expect(albums[0].id).to eq "1"
    expect(albums[0].title).to eq 'Hybrid theory'
  end

  it "returns album by id" do
    repo = AlbumRepository.new
    album = repo.find(2)
    
    expect(album.title).to eq 'Meteora'
    expect(album.release_year).to eq '2003'
    expect(album.artist_id).to eq '1'
  end

  it "returns album by id" do
    repo = AlbumRepository.new
    album = repo.find(1)
    
    expect(album.title).to eq 'Hybrid theory'
    expect(album.release_year).to eq '2000'
    expect(album.artist_id).to eq '1'
  end
end
