require 'account'

RSpec.describe Account do
  describe 'balance' do
    subject { described_class.new }

    it 'adds correct amount' do
      subject.credit(1000, '10-01-2023')
      expect(subject.balance).to eq(1000)
    end

    it 'subtracts correct amount' do
      subject.credit(1000, '10-01-2023')
      subject.debit(300, '11-01-2023')
      expect(subject.balance).to eq(700)
    end

  end

end