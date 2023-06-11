#!/usr/bin/ruby -w


$KCODE = 'u'


module Account_Name

  
  def Account_Name.enter_account_name()
    
    begin
      puts "Please enter an account name."

      name = $stdin.gets.chomp.to_s

      puts "Thank you."

      return name
    end
  end
end