require_relative 'ip_validator'

describe IPValidator::Validator do

  describe "#valid?" do

    it "returns true when IP address is 127.0.0.1" do
      validator = IPValidator::Validator.new("127.0.0.1")
      expect(validator).to be_valid
    end

    it "returns false when IP address is only three digits" do
      validator = IPValidator::Validator.new("127.0.0")
      expect(validator).not_to be_valid
    end

    it "returns false if any number is bigger than 255" do
      validator = IPValidator::Validator.new("256.0.0.1")
      expect(validator).not_to be_valid
      validator = IPValidator::Validator.new("127.256.0.1")
      expect(validator).not_to be_valid
      validator = IPValidator::Validator.new("12.0.256.1")
      expect(validator).not_to be_valid
      validator = IPValidator::Validator.new("127.0.0.256")
      expect(validator).not_to be_valid
    end

  end

end
