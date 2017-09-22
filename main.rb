require './bank_account.rb'

account_001 = BankAccount.new(0, 0.12)

puts account_001.balance
puts account_001.interest_rate

account_001.deposit = 250

puts account_001.balance

account_001.withdraw = 50

puts account_001.balance

account_001.gain_interest

puts account_001.balance
