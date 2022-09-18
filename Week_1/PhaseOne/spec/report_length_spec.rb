require "report_length"

RSpec.describe "report_length method" do
  it "'mouse' returns 'This string was 5 characters long.'" do
    result = report_length("mouse")
    expect(result).to eq "This string was 5 characters long."
  end
end

RSpec.describe "report_length method" do
  it "'tigers' returns 'This string was 6 characters long." do
    result = report_length("tigers")
    expect(result).to eq "This string was 6 characters long."
  end
end