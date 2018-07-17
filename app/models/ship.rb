class Ship
  attr_accessor :name, :type, :booty

  @@all = Array.new

  def initialize
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = Array.new
  end
end
