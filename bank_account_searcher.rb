#!/usr/bin/ruby -w


$LOAD_PATH << '.'
$KCODE = 'u'


require 'bank_account'


module Bank_Account_Searcher

  def initialize()
    @@number_of_bank_accounts = 0
  end

  def Bank_Account_Searcher.search(account_list)
  
    account = false
    routing = false
    bank_account = nil
  
    puts "Please enter an account and routing number to search by"
    puts "Account #"
    account_number = $stdin.gets.chomp.to_s
    puts "Routing #"
    routing_number = $stdin.gets.chomp.to_s

    bank_account = Bank_Account_Searcher.search_by_account_number(account_list, account_number)
    account = (bank_account != nil)
    bank_account = Bank_Account_Searcher.search_by_routing_number(account_list, routing_number)
    routing = (bank_account != nil)
    
    if account && routing
      return bank_account
    end
    
    return nil
  end
  

  def Bank_Account_Searcher.search_by_account_number(account_list, account_number)
    
    for account in account_list
      if account.getAccountNumber() === account_number
        return account
      end
    end

    return nil
  end

  def Bank_Account_Searcher.search_by_routing_number(account_list, routing_number)
    
    for account in account_list
      if account.getRoutingNumber() === routing_number
        return account
      end
    end

    return nil
  end
end