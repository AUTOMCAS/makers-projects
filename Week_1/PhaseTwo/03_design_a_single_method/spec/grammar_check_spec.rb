require "grammar_check"

RSpec.describe "grammar_check method" do
  it "returns 'Bad Grammar' when given 'hello'" do
  result = grammar_check("hello")
  expect(result).to eq "Bad Grammar"
  end

  it "returns 'Bad Grammar' when given 'hello'" do
    result = grammar_check("Hello")
    expect(result).to eq "Bad Grammar"
    end

  it "returns 'Grammar is good' when given 'Hello!'" do
    result = grammar_check("Hello!")
    expect(result).to eq "Grammar is good"
    end

    it "returns 'Grammar is good' when given 'Hello?'" do
      result = grammar_check("Hello?")
      expect(result).to eq "Grammar is good"
      end

    context "given argument is """ do
      it "fails" do
      expect { grammar_check("") }.to raise_error "Error, empty"
      end
    end

    context "given argument is nil" do
      it "fails" do
      expect { grammar_check(nil) }.to raise_error "Error, empty"
      end
    end
end