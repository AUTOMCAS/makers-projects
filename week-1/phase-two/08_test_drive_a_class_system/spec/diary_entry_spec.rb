require_relative "../lib/diary_entry.rb"

describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("Monday", "It was a dark day.")
    expect(diary_entry.contents).to eq "It was a dark day."
    expect(diary_entry.title).to eq "Monday"
  end

  describe "count_words" do
    it "Returns number of words in contents" do
      diary_entry = DiaryEntry.new("Monday", "It was a dark day.")
      expect(diary_entry.count_words).to eq 5
    end

    it "Returns 0 if contents is empty" do
      diary_entry = DiaryEntry.new("Monday", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  describe "@reading_time" do
    it "return 1 when contents is one word" do
      diary_entry = DiaryEntry.new("Monday", "It")
      expect(diary_entry.reading_time(2)).to eq 1
    end

    it "return 1 when given wpm of 5 and 5 words" do
      diary_entry = DiaryEntry.new("Monday", "It was a dark day today.")
      expect(diary_entry.reading_time(5)).to eq 2
    end
 

    it "Returns 0 if contents is empty" do
      diary_entry = DiaryEntry.new("Monday", "")
      expect(diary_entry.reading_time(5)).to eq 0
    end
    
    it "fails if given 0" do
      diary_entry = DiaryEntry.new("Monday", "It was a dark day")
      expect { diary_entry.reading_time(0)}.to raise_error "ERROR"
    end
  end

  describe "@reading_chunk" do
    it "given 5 wpm, 1 minute time and 5 words, returns the 5 words" do
      diary_entry = DiaryEntry.new("Monday", "It was a dark day")
      expect(diary_entry.reading_chunk(5, 1)).to eq "It was a dark day"
    end
    
    context "given 10 words, 5 minutes and 1 words per min and run twice." do
      it "return first chunk first run, second chunk second run" do
        diary_entry = DiaryEntry.new("Monday", "It was a dark cold and wet day that day")
        expect(diary_entry.reading_chunk(1, 5)).to eq "It was a dark cold"
        expect(diary_entry.reading_chunk(1, 5)).to eq "and wet day that day"
      end
    end
  end
end