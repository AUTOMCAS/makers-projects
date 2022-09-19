require_relative "../lib/task_tracker"

describe "task_tracker method" do
  it "returns true if '#TODO Walk dog' given" do
    result = task_tracker("#TODO Walk dog")
    expect(result).to eq true
  end
  
  it "returns false if 'Walk dog' given" do
    result = task_tracker("Walk dog")
    expect(result).to eq false
  end

  it "returns true if 'Walk dog #TODO' given" do
    result = task_tracker("Walk dog #TODO")
    expect(result).to eq true
  end

  it "returns false if string is empty" do
    result = task_tracker("")
    expect(result).to eq false
  end

end