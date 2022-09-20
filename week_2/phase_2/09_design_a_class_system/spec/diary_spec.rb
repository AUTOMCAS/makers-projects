require_relative "../lib/diary"

describe "all_entries method" do
  it "returns empty list" do
    diary = Diary.new
    expect(diary.all_entries).to eq []
  end
end



