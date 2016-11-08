module Events
  class BaseEvent
    def initialize
      raise NotImplementedError
    end

    def push
      EventStore.push(self)
      state
    end

    def event_type
      raise NotImplementedError
    end

    def state
      raise NotImplementedError
    end
  end
end
