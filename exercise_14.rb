class Auto
  attr_accessor :branch, :color, :year

  def self.power_on_auto?
    @power_on = false
    puts @power_on ? "The auto is power on" : "The auto is power off"
  end

  def self.start_drive
    @drive_on = true
    puts @power_on ? "The drive is started" : "The auto is power off, switch on"
    
  end

  def self.stop_drive
    puts @drive_on ? "The drive is finished" : "The auto is power off"
    #puts "The drive is finished"
  end
end

Auto.power_on_auto?
Auto.start_drive
Auto.stop_drive
