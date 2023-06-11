#!/usr/bin/ruby -w


$LOAD_PATH << '.'
$KCODE = 'u'


require 'bank_account'


module Transfer
include Bank_Account

  def Transfer.transfer(account1, account2)

    account1.withdraw()
    account2.deposit()
    
  end

end