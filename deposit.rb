#!/usr/bin/ruby -w


$KCODE = 'u'


module Deposit

  
  def Deposit.deposit_amount_into(balance)
    
    begin
      puts "Please enter a valid amount to deposit."
      puts "Your balance is $#{balance}"

      amount = $stdin.gets.chomp.to_f

      if amount === 0 || amount === 0.0
        puts "Your deposit is zero. Canceling desposit."
        return 0
      end

      if amount < 0 or amount < 0.0 or amount === -0 or amount === -0.0
        raise
      else
        puts "Thank you."

        if balance === -0 or balance === -0.0
          balance = 0.0
        end

        if amount === -0 or amount === -0.0
          amount = 0.0
        end

        balance += amount

        return balance
      end

    rescue
      retry
    end
  end
end