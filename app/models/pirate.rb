class Pirate
  attr_accessor :name, :weight, :height

  @@all = Array.new

  def initialize
  end

  def self.all
    @@all
  end
end
