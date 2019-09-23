class Patient
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointments.
  end
  
  def new_appointment(doctor, date)
    Appointment.all.select { |a| a.patient == self}  
  end
  
  
end