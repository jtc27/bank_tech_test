class AccountHistory
  attr_accessor :acct_history

  def initialize
    @acct_history = []
  end

  def record(entry)
    @acct_history << entry
  end
end