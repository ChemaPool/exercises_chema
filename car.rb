class Car
  attr_accessor :branch, :color, :year

  def self.power_on_car?
    @power_on = true
  end

  def self.start_drive
    return drive_car_start() if @power_on
    raise ArgumentError, "The car is power off, switch on"
  end

  def self.stop_drive
    return drive_car_stop if @start_drive
    raise ArgumentError, "The car is not driving"
  end

  def self.drive_car_start
    @start_drive = true
    "The drive is started"
  end

  def self.drive_car_stop
    @start_drive = false
    "The drive is finished"
  end

end

Car.power_on_car?
Car.start_drive
Car.stop_drive
