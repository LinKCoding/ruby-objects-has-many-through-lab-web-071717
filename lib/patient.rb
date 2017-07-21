class Patient
  attr_accessor name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    appt.patient = self
    @appointments << appt
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.map {|appt| appt.doctor}
  end
end
