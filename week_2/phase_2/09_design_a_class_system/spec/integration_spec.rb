require_relative "../lib/diary"
require_relative "../lib/diary_entry"
require_relative "../lib/todo_list"
require_relative "../lib/todo"

describe "integration" do
  context "An entry has been added" do
    it "all_entries returns list containing single entry" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "A dark day")
      diary.add(entry_1)
      expect(diary.all_entries).to eq [entry_1]
    end
  end

  context "multiple entries have been added" do
    it "all_entries returns list containing multiple entries" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "A dark day")
      entry_2 = DiaryEntry.new("Friday", "A bright day")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.all_entries).to eq [entry_1, entry_2]
    end

    describe "count_words" do
      it "returns word count of all entries" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("Monday", "A dark day")
        entry_2 = DiaryEntry.new("Friday", "A bright day today yes")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.count_words).to eq 8
      end
    end

    describe "readable_entries_in_time(wpm, time) method" do
        xit "Return diary entry which fits the time and wpm exactly" do
        # Given 5 word entry "5 word per min, 1 min for time
        diary = Diary.new
        entry_1 = DiaryEntry.new("Monday", "A dark day")
        entry_2 = DiaryEntry.new("Friday", "A bright day today yes")
        diary.add(entry_1)
        diary.add(entry_2)
        result = diary.readable_entries_in_time(5, 1)
        expect(result).to eq entry_2
      end
    end
  end
end