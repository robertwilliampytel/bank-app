#!/usr/bin/ruby -w


$KCODE = 'u'


module Account_Type
  CHECKING = "checking"
  SAVINGS  = "savings"
  CREDIT   = "credit"
  MONEY_MARKET = "money market"
  CERTIFICATE_OF_DEPOSIT = "certificate of deposit"

  def Account_Type.enter_valid_account_type()

    begin
      puts "Please enter a valid account type."
      puts "Types include checking, savings, credit, certificate of deposit (cd), and money market (mm)."

      account_type = $stdin.gets.chomp.to_s.downcase

      if account_type === Account_Type::CHECKING
        puts "Thank you."
        return Account_Type::CHECKING
      end
  
      if account_type === Account_Type::SAVINGS
        puts "Thank you."
        return Account_Type::SAVINGS
      end
  
      if account_type === Account_Type::CREDIT
        puts "Thank you."
        return Account_Type::CREDIT
      end
  
      if account_type === Account_Type::MONEY_MARKET or account_type === "mm"
        puts "Thank you."
        return Account_Type::MONEY_MARKET
      end
  
      if account_type === Account_Type::CERTIFICATE_OF_DEPOSIT or account_type === "cd"
        puts "Thank you."
        return Account_Type::CERTIFICATE_OF_DEPOSIT
      end

      raise

    rescue
      retry
    end
  end
end