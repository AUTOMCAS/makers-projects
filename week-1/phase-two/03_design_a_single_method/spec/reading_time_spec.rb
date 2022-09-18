require "reading_timer"

RSpec.describe "reading_time_calculator method" do
  it "given one word, returns 1" do
    result = reading_time_calculator("Hello")
    expect(result).to eq 1
  end

  it "divided 100 words by 200 and return it " do
    result = reading_time_calculator("Hello " * 100)
    expect(result).to eq 1
  end

  it "divided 200 words by 200 and return it " do
    result = reading_time_calculator("Hello " * 200)
    expect(result).to eq 1
  end 

  it "divided 300 words by 200 and return it " do
    result = reading_time_calculator("Hello " * 300)
    expect(result).to eq 2
  end 
  
  it "divided 400 words by 200 and return it " do
    result = reading_time_calculator("Hello " * 400)
    expect(result).to eq 2
  end 

  context "empty string given" do
    it "fails" do
      expect { reading_time_calculator("") }.to raise_error "Error" 
    end
  end

  context "nothing given" do
    it "fails" do
      expect { reading_time_calculator(nil) }.to raise_error "Error" 
    end
  end

end