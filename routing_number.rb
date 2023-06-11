#!/usr/bin/ruby -w


$KCODE = 'u'


module Routing_Number
  ROUTING_NUMBER_RANGE = Range.new(0, 999999999)

  def Routing_Number.enter_valid_routing_number()
    
    begin
      puts "Please enter a valid routing number."
      puts "Lengths range from 9 to 9 numbers long."

      routing_number = $stdin.gets.chomp.to_i

      if ROUTING_NUMBER_RANGE.cover?(routing_number)
        puts "Thank you."
        return routing_number.to_s
      end
      
      raise

    rescue
      retry
    end
  end
end