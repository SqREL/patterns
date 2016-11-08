module Events
  class UpdateSurname < BaseEvent
    def initialize(surname)
      @surname = surname
    end

    def attribute
      "surname"
    end

    def state
      @surname
    end
  end
end
