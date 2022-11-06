require "exercise_1"

describe "say_hello method" do
  it "expect input 'kay' to output 'hello kay'" do
    expect(say_hello("kay")).to eq "hello kay"
  end
end