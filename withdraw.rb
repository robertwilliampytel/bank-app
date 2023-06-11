#!/usr/bin/ruby -w


$KCODE = 'u'


module Withdraw

  
  def Withdraw.withdraw_amount_from(balance)
    
    begin
      puts "Please enter a valid amount to withdraw."
      puts "Your balance is $#{balance}"

      if balance === 0 || balance === 0.0
        puts "Your balance is zero. Canceling withdrawal."
        return 0
      end

      amount = $stdin.gets.chomp.to_f

      if amount > balance or amount < 0 or amount < 0.0 or amount === -0 or amount === -0.0
        raise
      else
        puts "Thank you."

        if balance === -0 or balance === -0.0
          balance = 0.0
        end

        if amount === -0 or amount === -0.0
          amount = 0.0
        end

        balance -= amount

        return balance
      end

    rescue
      retry
    end
  end
end