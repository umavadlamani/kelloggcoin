# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
nums = [0, 1, 2, 3, 4, 5, 6, 7]
names = ["ben", "brian", "evan", "anthony"]
balances = {"ben" => 0, "brian" => 0 , "evan" => 0, "anthony" => 0}

for num in nums
  for name in names
    if blockchain[num]["to_user"] == name
      balances[name] = balances[name] + blockchain[num]["amount"]
    elsif blockchain[num]["from_user"] == name
      balances[name] = balances[name]- blockchain[num]["amount"]
    else
      nil
    end
  end
end  

for name in names 
  puts "#{name}'s KelloggCoin balance is #{balances[name]}"
end

# 👇👇👇 OLD 👇👇👇
# ben_balance = 0 
# brian_balance = 0 
# evan_balance = 0
# anthony_balance = 0
# nums = [0, 1, 2, 3, 4, 5, 6, 7]
# for num in nums
#   if blockchain[num]["to_user"] == "ben"
#     ben_balance = ben_balance + blockchain[num]["amount"]
#   elsif blockchain[num]["from_user"] == "ben"
#     ben_balance = ben_balance - blockchain[num]["amount"]
#   else
#     nil
#   end
# end
# puts ben_balance
