class Auto
  attr_accessor :branch, :color, :year

  def self.power_on_auto?
    @power_on = true
  end

  def self.start_drive
    if @power_on
      @start_drive = true
      return "The drive is started"
    end
    raise ArgumentError, "The auto is power off, switch on"
  end

  def self.stop_drive
     if @start_drive
      @start_drive = false
      return "The drive is finished"
     end
    raise ArgumentError, "The auto is not driving"
  end
end

Auto.power_on_auto?
Auto.start_drive
Auto.stop_drive
