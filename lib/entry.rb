class Entry
# Holds the info for a single entry into the account records

attr_reader :date, :credit, :debit, :balance

def initialize(info)
  @date = info[:date]
  @credit = info[:credit]
  @debit = info[:debit]
  @balance = info[:balance]
end

end