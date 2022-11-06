require 'challenge_count_words'

RSpec.describe "count_words method" do
  it 'returns 1 when given "hi"' do
    result = count_words("hi")
    expect(result).to eq 1
  end
end

  describe "count_words method" do
    it 'returns 2 when given "hi there"' do
      result = count_words("hi there")
      expect(result).to eq 2
    end
  end
