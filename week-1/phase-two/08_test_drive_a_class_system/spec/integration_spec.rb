require_relative "../lib/diary.rb"
require_relative "../lib/diary_entry.rb"

describe "Diary integration" do
  it "lists out the entries added" do
    diary_instance = Diary.new
    entry_1 = DiaryEntry.new("Monday", "It was a dark day.")
    entry_2 = DiaryEntry.new("Friday", "It was a bright day.")
    diary_instance.add(entry_1)
    diary_instance.add(entry_2)
    expect(diary_instance.all).to eq [entry_1, entry_2]
  end

  describe "word counting behaviour" do
    it "counts total words of all entries" do
      diary_instance = Diary.new
      entry_1 = DiaryEntry.new("Monday", "It was a dark day.")
      entry_2 = DiaryEntry.new("Friday", "It was a bright day.")
      diary_instance.add(entry_1)
      diary_instance.add(entry_2)
      expect(diary_instance.count_words).to eq 10
    end
    it "returns 0 if no entries" do
      diary_instance = Diary.new
      expect(diary_instance.count_words).to eq 0
    end
  end

  describe "reading time behaviour" do
    it "returns reading time for all entries when it fits exactly" do
      diary_instance = Diary.new
      entry_1 = DiaryEntry.new("Monday", "It was a dark day.")
      entry_2 = DiaryEntry.new("Friday", "It was a bright day.")
      diary_instance.add(entry_1)
      diary_instance.add(entry_2)
      expect(diary_instance.reading_time(5)).to eq 2
    end

    it "returns reading time for all entries when it does not fit exactly" do
      diary_instance = Diary.new
      entry_1 = DiaryEntry.new("Monday", "It was a")
      entry_2 = DiaryEntry.new("Friday", "It was a")
      diary_instance.add(entry_1)
      diary_instance.add(entry_2)
      expect(diary_instance.reading_time(2)).to eq 3
    end
  end

  describe "best reading time entry behaviour" do
    it "fails when wpm is 0" do
      diary_instance = Diary.new
      entry_1 = DiaryEntry.new("Monday", "It was a")
      diary_instance.add(entry_1)
      expect { diary_instance.find_best_entry_for_reading_time(0, 1) }.to raise_error "ERROR"
    end

    context "we have just one entry, not over reading time" do
      it "returns that entry" do
        diary_instance = Diary.new
        entry_1 = DiaryEntry.new("Monday", "It was a")
        diary_instance.add(entry_1)
        expect(diary_instance.find_best_entry_for_reading_time(3, 1)).to eq entry_1
      end
    end

    context "we have two entries, second fits closest to reading time, but not over." do
      it "returns second entry" do
        diary_instance = Diary.new
        entry_1 = DiaryEntry.new("Monday", "It was a")
        entry_2 = DiaryEntry.new("Friday", "It was a cold")
        diary_instance.add(entry_1)
        diary_instance.add(entry_2)
        expect(diary_instance.find_best_entry_for_reading_time(4, 1)).to eq entry_2
      end
    end

    context "multiple entries of different lengths" do
      it "returns longest entry that is not over the time" do
        diary_instance = Diary.new
        best_entry = DiaryEntry.new("Monday", "It was")
        diary_instance.add(DiaryEntry.new("Monday", "It"))
        diary_instance.add(best_entry)
        diary_instance.add(DiaryEntry.new("Monday", "It was a"))
        diary_instance.add(DiaryEntry.new("Friday", "It was a cold night"))
        expect(diary_instance.find_best_entry_for_reading_time(2, 1)).to eq best_entry
      end
    end

    context "one entry, not readable in time." do
      it "returns nil" do
        diary_instance = Diary.new
        entry_1 = DiaryEntry.new("Monday", "It was a")
        diary_instance.add(entry_1)
        result = diary_instance.find_best_entry_for_reading_time(1, 1)
        expect(result).to eq nil
      end
    end
  end
end