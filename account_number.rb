#!/usr/bin/ruby -w


$KCODE = 'u'


module Account_Number
  ACCOUNT_NUMBER_RANGE = Range.new(0, 99999999999999999)

  def Account_Number.enter_valid_account_number()
    
    begin
      puts "Please enter a valid account number."
      puts "Lengths range from 9 to 17 numbers long."

      account_number = $stdin.gets.chomp.to_i

      if ACCOUNT_NUMBER_RANGE.cover?(account_number)
        puts "Thank you."
        return account_number.to_s
      end
      
      raise

    rescue
      retry
    end
  end
end