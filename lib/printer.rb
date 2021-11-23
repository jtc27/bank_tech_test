

class Printer
  def initialize(acct_history)
    @acct_history = acct_history
  end

  def print
    puts ' date         || credit || debit || balance '
    @acct_history.reverse.each do |entry|
      puts "#{entry.date}   || #{entry.credit}    ||  #{entry.debit}    || #{entry.balance}"
    end
  end
end