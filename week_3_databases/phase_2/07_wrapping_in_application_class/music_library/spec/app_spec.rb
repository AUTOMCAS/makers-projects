require_relative "../app.rb"

describe Application do
  it "prints to the terminal" do
    io = double :io
    expect(io).to receive(:puts).with("Welcome to the music library manager!").ordered
    expect(io).to receive(:puts).with("\n").ordered
    expect(io).to receive(:puts).with("What would you like to do?").ordered
    expect(io).to receive(:puts).with("1 - List all albums").ordered
    expect(io).to receive(:puts).with("2 - List all artists").ordered
    expect(io).to receive(:puts).with("\n").ordered
    expect(io).to receive(:puts).with("Enter your choice:").ordered
    
    expect(io).to receive(:gets).and_return("1").ordered
    expect(io).to receive(:puts).with("Here is your list of albums:").ordered

    expect(io).to receive(:puts).with("* 2 - Surfer Rosa").ordered
    allow(io).to receive(:puts)
    
    app_run = Application.new("music_library", io, AlbumRepository.new)
    app_run.run
  end
end
