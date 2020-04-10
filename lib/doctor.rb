class Doctor
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient) 
  end 
  
  def appointments 
    Appointment.all.select{|appointment| appointment.doctor == self} 
  end 
  
  def patients 
    self.appointments.all{|appointment| appointment.patient} 
  end 
  
  def self.all 
    @@all
  end 
  
end 