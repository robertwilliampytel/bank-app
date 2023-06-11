#!/usr/bin/ruby -w


$KCODE = 'u'


module Account_Owner

  
  def Account_Owner.enter_owners_name()
    
    begin
      puts "Please enter the account owner's name."

      name = $stdin.gets.chomp.to_s

      puts "Thank you."

      return name
    end
  end
end