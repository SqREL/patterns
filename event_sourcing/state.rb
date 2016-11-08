class StateObject
  def initialize
    @name    = nil
    @surname = nil
    @email   = nil
  end

  def update_name(name)
    @name = name
    Events::UpdateName.new(name).push
  end

  def update_surname(surname)
    @surname = surname
    Events::UpdateSurname.new(surname).push
  end

  def update_email(email)
    @email = email
    Events::UpdateEmail.new(email).push
  end

  def to_s
    [
      @name,
      @surname,
      @email
    ].join(", ")
  end

  def set_state(attribute, state)
    instance_variable_set("@#{attribute}", state)
  end
end
