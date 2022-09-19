require_relative "../lib/exercise.rb"

describe DiaryEntry do
  describe 'title method' do
    it 'returns the title "The Hobbit", when title method called' do
    class_test = DiaryEntry.new("The Hobbit", "It was sunny")
    expect(class_test.title).to eq "The Hobbit"
    end
  end

  describe 'contents method' do
    it 'returns the contents "It was sunny", when contents method called' do
    class_test = DiaryEntry.new("The Hobbit", "It was sunny")
    expect(class_test.contents).to eq "It was sunny"
    end
  end

  describe 'count_words method' do
    it 'returns the count of words of contents' do
      class_test = DiaryEntry.new("The Hobbit", "It was sunny")
      expect(class_test.count_words).to eq 3
    end
  end

  describe 'reading_time method' do
    it 'returns 1 when given 200 and count_words is 50' do
      class_test = DiaryEntry.new("The Hobbit", ("It " * 50))
      class_test.count_words
      expect(class_test.reading_time(200)).to eq 1
    end
  end

    describe 'reading_time method' do
      it 'returns 1 when given 200 and count_words is 0' do
        class_test = DiaryEntry.new("The Hobbit", ("It " * 0))
        class_test.count_words
        expect(class_test.reading_time(200)).to eq 0
      end
    end

    describe 'reading_chunk method' do
      it 'given wpm is 5, minutes is 1, contents is "One Two Three Four Five Six", return "One Two Three Four Five"' do
        class_test = DiaryEntry.new("The Hobbit", "One Two Three Four Five Six")
        expect(class_test.reading_chunk(5, 1)).to eq "One Two Three Four Five"
      end
    end

      it 'given wpm is 200, minutes is 5, contents is ("One " * 1100)' do
        class_test = DiaryEntry.new("The Hobbit", ("One " * 1100).strip)
        expect(class_test.reading_chunk(200, 5)).to eq ("One " * 1000).strip
      end

      it 'given wpm is 200, minutes is 5, contents is ""' do
        class_test = DiaryEntry.new("The Hobbit", ("").strip)
        expect(class_test.reading_chunk(200, 5)).to eq ("").strip
      end

      it 'When called a second time, given wpm is 1, minutes is 1, contents is "One Two Three"' do
        class_test = DiaryEntry.new("The Hobbit", "One Two Three Four")
        class_test.reading_chunk(2, 1)
        expect(class_test.reading_chunk(2, 1)).to eq "Three Four"
      end

  
end