require_relative 'account_history'
require_relative 'entry'
require_relative 'printer'

class Account

  attr_accessor :balance, :acct_history

  def initialize
    @balance = 0
    @acct_history = AccountHistory.new
  end

  def credit(amount, date)
    @balance += amount
    entry_info = { date: date, credit: amount, debit: 0, balance: @balance }
    record_entry(Entry.new(entry_info))
  end

  def debit(amount, date)
    @balance -= amount
    entry_info = { date: date, credit: 0, debit: amount, balance: @balance }
    record_entry(Entry.new(entry_info))
  end

  def print
    Printer.new(@acct_history.acct_history).print
  end

  def record_entry(entry)
    @acct_history.record(entry)
  end

end