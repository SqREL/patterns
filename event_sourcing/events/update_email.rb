module Events
  class UpdateEmail < BaseEvent
    def initialize(email)
      @email = email
    end

    def attribute
      "email"
    end

    def state
      @email
    end
  end
end
