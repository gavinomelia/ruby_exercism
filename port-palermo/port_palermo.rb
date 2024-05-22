module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0, 4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    return :A if ship_identifier.to_s.start_with?('OIL', 'GAS')
    return :B
  end
end
