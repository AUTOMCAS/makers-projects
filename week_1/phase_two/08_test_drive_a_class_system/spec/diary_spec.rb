require_relative "../lib/diary.rb"

describe Diary do
  context "initially" do
    it "has an empty list of entries" do
      diary_instance = Diary.new
      expect(diary_instance.all).to eq []
    end

    it "has a word count of 0" do
      diary_instance = Diary.new
      expect(diary_instance.count_words).to eq 0
    end

    it "has a reading time of 0" do
      diary_instance = Diary.new
      expect(diary_instance.reading_time(2)).to eq 0
    end

    it "best entry for reading returns nil" do
      diary_instance = Diary.new
      result = diary_instance.find_best_entry_for_reading_time(2, 1)
      expect(result).to eq nil
    end

  end
end