require_relative "../lib/diary.rb"

describe Diary do
  it "returns contents" do
    diary = Diary.new("test")
    expect(diary.read).to eq "test"
  end
end
