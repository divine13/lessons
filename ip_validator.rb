module IPValidator

  class Validator
    REGEXP = /^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/

    def initialize(ip)
      @ip = ip
    end

    def valid?
      !!(@ip =~ REGEXP)
    end

  end

end
