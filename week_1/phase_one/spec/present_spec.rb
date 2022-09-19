require "present"

RSpec.describe Present do
  it "return contents" do
    present = Present.new
    present.wrap("shark")
    result = present.unwrap()
    expect(result).to eq "shark"
  end

  context "Fails if unwrap happens before wrap" do
    it "fails" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "Fails if already wrapped" do
    it "fails" do
      present = Present.new
      present.wrap("Hi")
      expect { present.wrap("again") }.to raise_error "A contents has already been wrapped."
    end
  end

end