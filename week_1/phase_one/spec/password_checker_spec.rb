require "password_checker"

RSpec.describe PasswordChecker do
  it "Password length 10" do
    password_checker = PasswordChecker.new
    result = password_checker.check("1234512345")
    expect(result).to eq true
  end

  context "Fails if character 8 or less characters" do
    it "fails" do
      password_checker = PasswordChecker.new
      expect { password_checker.check("1234") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end

