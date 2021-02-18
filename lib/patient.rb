
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

    def new_appointment(date,doctor)
        Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
        #returns all appointments associated with this Patient
    end

    def doctors
        appointments.collect {|appointment| appointment.doctor}
        #has many doctors through appointments
    end

end