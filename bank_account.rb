#!/usr/bin/ruby -w


$LOAD_PATH << '.'
$KCODE = 'u'


require 'balance'
require 'account_type'
require 'account_name'
require 'account_owner'
require 'account_number'
require 'routing_number'
require 'withdraw'
require 'deposit'


class Bank_Account
include Balance
include Account_Type
include Account_Name
include Account_Owner
include Account_Number
include Routing_Number
include Withdraw
include Deposit

  def initialize()
    @balance        =        Balance.enter_valid_starting_balance()
    @account_type   =   Account_Type.enter_valid_account_type()
    @name           =   Account_Name.enter_account_name()
    @owner          =  Account_Owner.enter_owners_name()
    @account_number = Account_Number.enter_valid_account_number()
    @routing_number = Routing_Number.enter_valid_routing_number()
  end

  def to_s()
    "<Bank_Account>(type = #{@account_type}, Account #: #{@account_number}, Routing #: #{@routing_number})"
  end
  public :to_s

  def withdraw()
    @balance = Withdraw.withdraw_amount_from(@balance)
  end
  public :withdraw

  def deposit()
    @balance = Deposit.deposit_amount_into(@balance)
  end
  public :deposit

  def getBalance()
    return @balance
  end
  public :getBalance

  def setBalance(balance)
    @balance = balance
  end
  public :setBalance

  def getAccountNumber()
    return @account_number
  end
  public :getAccountNumber

  def setAccountNumber(number)
    @account_number = number
  end
  public :setAccountNumber

  def getRoutingNumber()
    return @routing_number
  end
  public :getRoutingNumber

  def setRoutingNumber(number)
    @routing_number = number
  end
  public :setRoutingNumber

end