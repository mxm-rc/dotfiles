def ip_to_num(ip_address)
  # TODO: return the number version of the `ip_address` string
  if ip_address.is_a? String and ip_address.split('.').length() == 4
    puts ip_address.split('.')
  else
    return FalseClass
  end
end

def num_to_ip(number)
  # # TODO: return the string IP address from the `number`
  # if number.is_a? Integer
  #   return true
  # else
  #   return false
  # end
end

puts "Adresse IP ?"
ip_address = gets.chomp
puts ip_to_num(ip_address)
