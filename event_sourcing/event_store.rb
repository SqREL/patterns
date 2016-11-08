class EventStore
  class << self
    def instance
      @instance ||= new
    end

    def push(event)
      instance.push(event)
    end

    def build
      instance.build
    end
  end

  def initialize
    @vault = []
  end

  def push(event)
    @vault << event
  end

  def build
    buildable_object = StateObject.new

    @vault.each do |event|
      buildable_object.set_state(event.attribute, event.state)
    end

    buildable_object
  end
end
