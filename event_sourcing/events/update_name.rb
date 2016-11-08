module Events
  class UpdateName < BaseEvent
    def initialize(surname)
      @surname = surname
    end

    def attribute
      "name"
    end
    
    def state
      @surname
    end
  end
end
