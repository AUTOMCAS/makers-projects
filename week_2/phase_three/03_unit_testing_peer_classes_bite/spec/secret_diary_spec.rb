require_relative "../lib/secret_diary.rb"

describe SecretDiary do
  context "Diary starts locked" do
    it "fails" do
      fake_diary_entry = double(:fake_diary_entry, read: "Today was a great day.")
      secret_diary = SecretDiary.new(fake_diary_entry)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

  context "Diary is unlocked" do
    it "returns diary contents" do
      fake_diary_entry = double(:fake_diary_entry, read: "Today was a great day.")
      secret_diary = SecretDiary.new(fake_diary_entry)
      secret_diary.unlock
      expect(secret_diary.read).to eq "Today was a great day."
    end
  end
end