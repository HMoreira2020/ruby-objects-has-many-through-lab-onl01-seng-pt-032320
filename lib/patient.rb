class Patient 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date, doctor) 
    appointment = Appointment.new(date, doctor) 
  end 
  
  def appointments 
    Appointments.all.select{|appointment| appointment.patient == self} 
  end 
  
  def doctors 
    self.appointments.collect{|appointment| appointment.doctor} 
  end 
  
  
  