class User
  attr_accessor :name, :last_name

  def full_name
    "#{@name} #{@last_name}"
  end
end

user = User.new
user.name = "Jose"
user.last_name = "Pool"

puts user.full_name
