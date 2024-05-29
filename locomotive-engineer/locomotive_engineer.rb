class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, loco, *rest = each_wagons_id
    combined = loco, *missing_wagons, *rest, first, second 
  end

  def self.add_missing_stops(route, **stops)
    combined = {**route, stops: stops.values}
  end

  def self.extend_route_information(route, more_route_information)
    consolidated = {**route, **more_route_information}
  end
end
