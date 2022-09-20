require_relative "../lib/diary"

describe "all_entries method" do
  it "returns empty list" do
    diary = Diary.new
    expect(diary.all_entries).to eq []
  end
end

context "initially" do
  describe "todolist_incomplete" do
    it "returns empty list" do
      diary = Diary.new
      expect(diary.todolist_incomplete).to eq []
    end
  end

  describe "return_contacts" do
    it "returns empty list" do
      diary = Diary.new
      expect(diary.return_contacts).to eq []
    end
  end

end



