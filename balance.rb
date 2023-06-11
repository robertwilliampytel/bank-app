#!/usr/bin/ruby -w


$KCODE = 'u'


module Balance

  
  def Balance.enter_valid_starting_balance()
    
    begin
      puts "Please enter a valid starting balance (whole or decimal number)."

      account_balance = $stdin.gets.chomp.to_f

      if account_balance >= 0 or account_balance >= 0.0
        puts "Thank you."
        if account_balance === -0 or account_balance === -0.0
          account_balance = 0.0
        end
        return account_balance
      end

      raise

    rescue
      retry
    end
  end
end