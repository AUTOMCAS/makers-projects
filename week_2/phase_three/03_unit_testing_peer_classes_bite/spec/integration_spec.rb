require_relative "../lib/diary.rb"
require_relative "../lib/secret_diary.rb"

describe "integration" do 
  # let(:diary) { Diary.new("Today was a great day.") }
  # let(:secret_diary) { SecretDiary.new(diary) }

  context "Diary is unlocked" do
    it "returns diary contents" do
      diary = Diary.new("Today was a great day.")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "Today was a great day."
    end
  end

  context "Diary is locked" do
    it "returns diary contents" do
      diary = Diary.new("Today was a great day.")
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

  context "Diary is re-locked" do
    it "returns diary contents" do
      diary = Diary.new("Today was a great day.")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end