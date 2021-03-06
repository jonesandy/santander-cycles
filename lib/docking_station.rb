require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "No bikes available!" if empty?

    @bikes.each do |bike|
      if bike.working?
        return @bikes.delete(bike)
      end
    end
        
    raise "No bikes available!"
  end

  def dock(bike)
    raise "Station full!" if full?

    @bikes << bike
  end

  private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
