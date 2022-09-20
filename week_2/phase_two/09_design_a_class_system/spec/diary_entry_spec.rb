require_relative "../lib/diary_entry"

context "initialized with title and content" do
  describe "title method" do
    it "returns title" do
      entry = DiaryEntry.new("Monday", "A dark day")
      expect(entry.title).to eq "Monday"
    end
  end

  describe "content method" do
    it "returns content" do
      entry = DiaryEntry.new("Monday", "A dark day")
      expect(entry.content).to eq "A dark day"
    end
  end

  describe "reading_time method" do
    context "given 5 as WPM and 5 words" do
      it "returns time to read" do
        entry = DiaryEntry.new("Monday", "A dark day this day")
        expect(entry.reading_time(5)).to eq 1
      end
    end

    context "given 5 as WPM and one word (division is not exact)" do
      it "returns time to read" do
        entry = DiaryEntry.new("Monday", "Day")
        expect(entry.reading_time(5)).to eq 1
      end
    end
  end

  describe "check_for_contacts" do
    context "contains mobile number with no space" do
      it "returns contact" do
        task = DiaryEntry.new("Should go sleep", "Walk dog 07911123456")
        expect(task.return_contacts).to eq ["07911123456"]
      end
    end
  end
end

