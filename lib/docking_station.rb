require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise "No bikes available!" if empty?

    bike = @bikes.pop
    
    if bike.working?
      bike
    else
      raise "No bikes available!"
      @bikes << bike
    end
    
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
