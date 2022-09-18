require_relative "../lib/challenge.rb"

describe GrammarStats do
  describe 'check method' do 
    it 'returns false given "hello"' do
      class_instance = GrammarStats.new
      expect(class_instance.check("hello")).to eq false
    end
  
    it 'returns true, given "Hello!"' do
      class_instance = GrammarStats.new
      expect(class_instance.check("Hello!")).to eq true
    end
  end

  describe 'percentage_good method' do 
    it 'returns 100, when check("Hello!") given to GrammarStats 3 times' do
      class_instance = GrammarStats.new
      class_instance.check("Hello!")
      class_instance.check("Hello!")
      class_instance.check("Hello!")
      expect(class_instance.percentage_good).to eq 100
    end
    it 'returns 100, when check("Hello!") given to GrammarStats 3 times' do
      class_instance = GrammarStats.new
      class_instance.check("Hello!")
      class_instance.check("Hello!")
      class_instance.check("hello!")
      class_instance.check("hello")
      expect(class_instance.percentage_good).to eq 50
    end
  end
end