#!/usr/bin/ruby -w


$LOAD_PATH << '.'
$KCODE = 'u'


require 'bank_account'
require 'bank_account_searcher'


class Bank_App
include Bank_Account_Searcher

  def initialize()
    @account_list = Array.new()
    @@number_of_customers = 0
  end

  def menu()
    begin
      puts "Action -> new, withdraw, deposit, q to quit"

      choice = $stdin.gets.chomp.downcase

      if choice === "q"
        return
      end

      if choice === "new"
        new_account = Bank_Account.new()
        @account_list.push(new_account)
        @@number_of_customers += 1
        puts "WE HAVE #{@@number_of_customers} TOTAL CUSTOMERS NOW"
        raise
      end

      if choice != "withdraw" && choice != "deposit"
        raise
      end

      not_empty    = (!@account_list.empty?())
      bank_account = nil

      if not_empty
        bank_account = Bank_Account_Searcher.search(@account_list)
      else
        raise
      end

      if choice === "withdraw"
        bank_account.withdraw()
      end

      if choice == "deposit"
        bank_account.deposit()
      end

      raise

    rescue 
      retry
    end
  end
  public :menu

  def to_s()
    return "<Bank App>"
  end
  public :to_s
end


ba = Bank_App.new()


ba.menu()