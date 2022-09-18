require "check_codeword"

RSpec.describe "add check_codeword" do
  it 'horse returns "Correct! Come in."' do
  result = check_codeword("horse") 
    expect(result).to eq "Correct! Come in."
  end
end