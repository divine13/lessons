require_relative 'ip_validator'

describe IPValidator::Validator do

  describe "#valid?" do

    it "returns true when IP address is 127.0.0.1" do
      validator = IPValidator::Validator.new("127.0.0.1")
      expect(validator).to be_valid
    end

  end

end
