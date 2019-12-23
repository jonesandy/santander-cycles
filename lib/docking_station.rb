require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize 
    @bikes = []
  end

  def release_bike
    raise "No bikes available!" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Station full!" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end

end
