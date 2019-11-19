class User
  attr_accessor :name, :last_name

  def say_name
    "#{@name} #{@last_name}"
  end
end

data_user = User.new
data_user.name = "Jose"
data_user.last_name = "Pool"

puts data_user.say_name
